{ lib, buildSpecJSON, stdenvNoCC, ed, haskellPackages }:

{ version, openapiJSON ? null, sha256 ? null, vendorHash ? null }@args:
  let
    openapiJSON = args.openapiJSON or (buildSpecJSON {
      inherit version;
      sha256 = args.sha256 or (throw "sha256 not specified");
      vendorHash = args.vendorHash or (throw "vendorHash not specified");
    });

  in stdenvNoCC.mkDerivation {
    name = "rook-ceph-dhall";
    inherit version;

    src = lib.fileset.toSource {
      root = ./.;
      fileset = ./patch.sh;
    };

    nativeBuildInputs = [ ed haskellPackages.dhall ];

    buildPhase = ''
      mkdir -p "$TMPDIR/generated"
      cd "$TMPDIR/generated"
      ${haskellPackages.dhall-openapi}/bin/openapi-to-dhall \
          --preferNaturalInt "${openapiJSON}/generated.v2.json"
      # openapi-to-dhall currently doesn't support exceptions with
      # underscores in their names
      sed -i "s/Natural/Integer/g" types/io.rook.ceph.v1.StatesSpec.dhall
      cd "$src"

      sh patch.sh "$TMPDIR/generated"
    '';

    installPhase = ''
      cp -r "$TMPDIR/generated" "$out"
    '';
  }
