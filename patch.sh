#!/usr/bin/env sh

make_function() {
    FILE=$1
    DIR=$2

    ASCENT=
    RELATIVE=${FILE#"$DIR"/}
    while [ -n "$RELATIVE" ]
    do
        case "$RELATIVE" in
        */*)
            RELATIVE=${RELATIVE#*/}
            ASCENT="../$ASCENT"
            ;;
        *) RELATIVE= ;;
        esac
    done

    # Update expression to take a parameter
    printf '%s\n' 0a "λ(kubernetes: ./${ASCENT}kubernetes.dhall) →" . w q | \
        ed "$FILE" 2> /dev/null
}

patch_definition() {
    FILE=$1

    # Add function calls to all imports
    sed -i "s/[^ ]*\.dhall/(& kubernetes)/g" "$FILE"

    make_function "$FILE" "$DIR"
}

patch_definitions() {
    DIR=$1

    for FILE in "$DIR/defaults.dhall" "$DIR/package.dhall" \
        "$DIR/schemas.dhall" "$DIR/types.dhall" "$DIR/typesUnion.dhall"
    do
        patch_definition "$FILE"
    done
    for FILE in "$DIR"/schemas/*.dhall
    do
        DEFINITION=${FILE#"$DIR"/schemas/}

        patch_definition "$DIR/defaults/$DEFINITION"
        patch_definition "$DIR/schemas/$DEFINITION"
        patch_definition "$DIR/types/$DEFINITION"
    done
}

remove_external() {
    DIR=$1

    for FILE in "$DIR"/types/*.dhall
    do
        case "$FILE" in
        "$DIR"/types/io.rook.ceph.v1.*) ;;
        *)
            FILE=${FILE#"$DIR/types/"}
            FILE=${FILE%.dhall}
            NAME=${FILE##*.}

            if [ -e "$DIR/schemas/$FILE.dhall" ]
            then
                echo "  Pruning $FILE"

                rm "$DIR/defaults/$FILE.dhall"
                rm "$DIR/schemas/$FILE.dhall"

                # Update references
                find "$DIR/types" -name \*.dhall \
                    -exec sed -i \
                        "s/.\/$FILE.dhall kubernetes/kubernetes.$NAME/g" {} \;
                find "$DIR/defaults" -name \*.dhall \
                    -exec sed -i \
                        "s/.\/..\/types\/$FILE.dhall kubernetes/kubernetes.$NAME/g" \
                        {} \;
            else
                echo "  Inlining $FILE"

                # Inline references
                CONTENTS=$(cat "$DIR/types/$FILE.dhall")
                find "$DIR/types" -name \*.dhall \
                    -exec sed -i \
                        "s/.\/$FILE.dhall kubernetes/$CONTENTS/g" {} \;
                find "$DIR/defaults" -name \*.dhall \
                    -exec sed -i \
                        "s/.\/..\/types\/$FILE.dhall kubernetes/$CONTENTS/g" \
                         {} \;
            fi

            rm "$DIR/types/$FILE.dhall"

            # Comment out so it gets removed when formatting
            for EXPORT in "$DIR/defaults.dhall" "$DIR/schemas.dhall" \
                "$DIR/types.dhall" "$DIR/typesUnion.dhall"
            do
                sed -i "s/[,|]\{0,1\} $NAME [:=]/{-- &/" "$EXPORT"
                sed -i "s/$FILE.dhall.*$/& --}/" "$EXPORT"
            done
            ;;
        esac
    done
}

register_remaining() {
    DIR=$1

    echo "{" > "$DIR/kubernetes.dhall"

    for FILE in "$DIR"/types/*.dhall
    do
        MATCHES=$(grep -o 'kubernetes\.[A-Z][A-Za-z]*' "$FILE")
        for MATCH in $MATCHES
        do
            MATCH=$(echo "$MATCH" | sed "s/kubernetes\.\(.*\)/\1/")
            if ! grep -q "$MATCH" "$DIR/kubernetes.dhall"
            then
                echo ", $MATCH : Type" >> "$DIR/kubernetes.dhall"
            fi
        done
    done

    echo "}" >> "$DIR/kubernetes.dhall"
}

format_all() {
    DIR=$1

    find "$DIR" -name \*.dhall -exec dhall format {} \;
}

BINDING_DIR=$1

echo "Rewriting all definitions as functions..."
patch_definitions "$BINDING_DIR"

echo "Removing definitions outside of the io.rook.dhall.v1 namespace..."
remove_external "$BINDING_DIR"

echo "Building import type definition..."
register_remaining "$BINDING_DIR"

echo "Formatting..."
format_all "$BINDING_DIR"
