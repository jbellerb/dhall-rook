{ callPackage, buildSpecModule }:

{ version, sha256, vendorHash }:
  let
    openapi-json = callPackage ./openapi/default.nix { };

  in openapi-json.overrideAttrs (final: prev: {
    inherit version;
    specModule = buildSpecModule { inherit version sha256 vendorHash; };
  })
