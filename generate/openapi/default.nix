{ buildGoModule }:

buildGoModule {
  pname = "rook-ceph-openapi-json";
  version = "0.0";

  src = ./.;

  vendorHash = "sha256-qTrXnno/XBS2W2j3q6/bnKZyGV1vtx0sl5kO41JpQDQ=";
  proxyVendor = true;

  preConfigure = ''
    cp "$specModule/generated.openapi.go" .
  '';

  installPhase = ''
    mkdir -p "$out"
    $GOPATH/bin/main "$version" "$out/generated.v2.json"
  '';
}
