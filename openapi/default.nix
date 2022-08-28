{ lib, pkgs, stdenv }:

let
  specModule = pkgs.buildGoModule {
    pname = "rook-ceph-openapi-module";
    version = "1.9";

    src = pkgs.fetchzip {
      url = "https://github.com/rook/rook/archive/release-1.9.tar.gz";
      sha256 = "sha256-MjHH+M5wb14CjHb9nMe+AgNhfwv+Dl0UEda6dekZfbc=";
    };

    vendorSha256 = "sha256-VVqu12MnRz0yAmgiYt7eqAy/YBsmak/xT0yiECDHz3c=";

    preConfigure = ''
      export GO111MODULE=on
      export GOROOT=${pkgs.go}/share/go
    '';

    postConfigure = ''
      chmod 777 -R vendor/github.com/kube-object-storage
      ${pkgs.gnused}/bin/sed -i -e '1i // +k8s:openapi-gen=true' \
          pkg/apis/ceph.rook.io/v1/doc.go \
          vendor/github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io/v1alpha1/doc.go
      chmod 555 -R vendor/github.com/kube-object-storage
    '';

    buildPhase = ''
      ${pkgs.kube-openapi}/bin/openapi-gen \
          -i github.com/rook/rook/pkg/apis/ceph.rook.io/v1 \
          -i github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io/v1alpha1 \
          -i k8s.io/api/core/v1 \
          -i k8s.io/apimachinery/pkg/api/resource \
          -i k8s.io/apimachinery/pkg/apis/meta/v1 \
          -i k8s.io/apimachinery/pkg/util/intstr \
          -o generate -p main -h /dev/null
    '';

    installPhase = ''
      mkdir -p $out
      mv generate/main/openapi_generated.go $out/
    '';
  };

in pkgs.buildGoModule {
  pname = "rook-ceph-openapi-json";
  version = "1.9";

  src = ./.;

  vendorSha256 = "sha256-00ws6XXwIbNhuTq6kJlz38FVBoHzvtENIVRAlIHDT0k=";
  proxyVendor = true;

  preConfigure = "cp ${specModule}/openapi_generated.go .";

  installPhase = ''
    mkdir -p $out
    $GOPATH/bin/main 1.9 $out/generated.v2.json
  '';
}
