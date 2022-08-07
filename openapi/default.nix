{ lib, pkgs, stdenv }:

let
  specModule = pkgs.buildGoModule {
    pname = "rook-ceph-openapi-module";
    version = "1.9";

    src = pkgs.fetchzip {
      url = "https://github.com/rook/rook/archive/release-1.9.tar.gz";
      sha256 = "123s5mx9rpszk6d5vxaqis33rx58sckzfgm7sr3j6lqvawzna2lg";
    };

    vendorSha256 = "03d4g7b344bikawdadsg7m7f0i4jzxa4dr5fn06na6zfvr3vrxn3";

    preConfigure = ''
      export GO111MODULE=on
      export GOROOT=${pkgs.go}/share/go
    '';

    postPatch = ''
      ${pkgs.gnused}/bin/sed -i -e '1i // +k8s:openapi-gen=true' \
          pkg/apis/ceph.rook.io/v1/doc.go
    '';

    buildPhase = ''
      ${pkgs.kube-openapi}/bin/openapi-gen \
          -i github.com/rook/rook/pkg/apis/ceph.rook.io/v1 \
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

  specBuilder = pkgs.buildGoModule {
    pname = "rook-ceph-openapi-builder";
    version = "1.9";

    src = ./.;

    vendorSha256 = "14xnbbc4q47ljqc53a346fvs1z5z6nhn59vf7zwrm061f0yifpsw";

    preConfigure = "cp ${specModule}/openapi_generated.go .";
  };

in
  pkgs.runCommand "rook-ceph-openapi-1.9" {} ''
    mkdir -p $out
    ${specBuilder}/bin/main 1.9 $out/generated.v2.json
  ''
