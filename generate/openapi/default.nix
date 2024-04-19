{ lib, pkgs, stdenv }:

let
  specModule = pkgs.buildGoModule {
    pname = "rook-ceph-openapi-module";
    version = "1.9";

    src = pkgs.fetchzip {
      url = "https://github.com/rook/rook/archive/release-1.9.tar.gz";
      sha256 = "sha256-BTvCdW1aHcVgxb11s5g2njrLWIIi7jg4qs2XWhV66Xs=";
    };

    vendorHash = "sha256-VVqu12MnRz0yAmgiYt7eqAy/YBsmak/xT0yiECDHz3c=";

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
          --output-dir generate --output-pkg main --go-header-file /dev/null \
          github.com/rook/rook/pkg/apis/ceph.rook.io/v1 \
          github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io/v1alpha1 \
          k8s.io/api/core/v1 \
          k8s.io/apimachinery/pkg/api/resource \
          k8s.io/apimachinery/pkg/apis/meta/v1 \
          k8s.io/apimachinery/pkg/util/intstr
    '';

    installPhase = ''
      mkdir -p $out
      mv generate/generated.openapi.go $out/
    '';
  };

in pkgs.buildGoModule {
  pname = "rook-ceph-openapi-json";
  version = "1.9";

  src = ./.;

  vendorHash = "sha256-lyUHb3b2kCiE7CjW993Tanin6bTUAbari4+Q8DL68nA=";
  proxyVendor = true;

  preConfigure = "cp ${specModule}/generated.openapi.go .";

  installPhase = ''
    mkdir -p $out
    $GOPATH/bin/main 1.9 $out/generated.v2.json
  '';
}
