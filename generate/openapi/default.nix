{ buildGoModule }:

buildGoModule {
  pname = "rook-ceph-openapi-json";
  version = "0.0";

  src = ./.;

  vendorHash = "sha256-lyUHb3b2kCiE7CjW993Tanin6bTUAbari4+Q8DL68nA=";
  proxyVendor = true;

  preConfigure = ''
    cp "$specModule/generated.openapi.go" .
  '';

  installPhase = ''
    mkdir -p "$out"
    $GOPATH/bin/main "$version" "$out/generated.v2.json"
  '';
}
