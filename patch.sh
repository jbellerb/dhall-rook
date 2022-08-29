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
        ed "$FILE" > /dev/null 2>&1
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

remove_definition() {
    DIR=$1
    FILE=$2

    FILE=${FILE#"$DIR"/types/}
    QUALIFIED=${FILE%.dhall}
    TYPE=${QUALIFIED##*.}

    if [ -e "$DIR/schemas/$FILE" ]
    then
        echo "  Pruning $QUALIFIED"

        rm "$DIR/defaults/$FILE"
        rm "$DIR/schemas/$FILE"

        # Update references
        find "$DIR/types" -name \*.dhall \
            -exec sed -i \
                "s/.\/$FILE kubernetes/kubernetes.$TYPE/g" {} \;
        find "$DIR/defaults" -name \*.dhall \
            -exec sed -i \
                "s/.\/..\/types\/$FILE kubernetes/kubernetes.$TYPE/g" \
                {} \;
    else
        echo "  Inlining $QUALIFIED"

        # Inline references
        CONTENTS=$(cat "$DIR/types/$FILE")
        find "$DIR/types" -name \*.dhall \
            -exec sed -i \
                "s/.\/$FILE kubernetes/$CONTENTS/g" {} \;
        find "$DIR/defaults" -name \*.dhall \
            -exec sed -i \
                "s/.\/..\/types\/$FILE kubernetes/$CONTENTS/g" \
                 {} \;
    fi

    rm "$DIR/types/$FILE"

    # Comment out so it gets removed when formatting
    for EXPORT in "$DIR/defaults.dhall" "$DIR/schemas.dhall" \
        "$DIR/types.dhall" "$DIR/typesUnion.dhall"
    do
        sed -i "s/[,|]\{0,1\} $TYPE [:=]/{-- &/" "$EXPORT"
        sed -i "s/$FILE.*$/& --}/" "$EXPORT"
    done
}

remove_external() {
    DIR=$1

    for FILE in "$DIR"/types/*.dhall
    do
        case "$FILE" in
        "$DIR"/types/io.rook.ceph.v1.*) ;;
        "$DIR"/types/io.objectbucket.v1alpha1.*) ;;
        *) remove_definition "$DIR" "$FILE" ;;
        esac
    done
}

remove_invalid() {
    DIR=$1

    for FILE in "$DIR"/types/*.dhall
    do
        if [ ! -e "$DIR/schemas/${FILE#"$DIR"/types/}" ]
        then
            remove_definition "$DIR" "$FILE"
        fi
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

echo "Removing Kubernetes type definitions..."
remove_external "$BINDING_DIR"

echo "Inlining invalid type definitions..."
remove_invalid "$BINDING_DIR"

echo "Building import type definition..."
register_remaining "$BINDING_DIR"

echo "Formatting..."
format_all "$BINDING_DIR"
