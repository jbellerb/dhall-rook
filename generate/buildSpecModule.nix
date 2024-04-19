{ fetchzip, buildGoModule, gnused, go, kube-openapi }:

{ version, sha256, vendorHash }:
  buildGoModule {
    pname = "rook-ceph-openapi-module";
    inherit version;

    src = fetchzip {
      url = "https://github.com/rook/rook/archive/release-${version}.tar.gz";
      inherit sha256;
    };

    inherit vendorHash;

    preConfigure = ''
      export GO111MODULE=on
      export GOROOT=${go}/share/go
    '';

    postConfigure = ''
      chmod 777 -R vendor/github.com/kube-object-storage
      ${gnused}/bin/sed -i -e '1i // +k8s:openapi-gen=true' \
          pkg/apis/ceph.rook.io/v1/doc.go \
          vendor/github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io/v1alpha1/doc.go
      chmod 555 -R vendor/github.com/kube-object-storage
    '';

    buildPhase = ''
      ${kube-openapi}/bin/openapi-gen \
          --output-dir generate --output-pkg main --go-header-file /dev/null \
          github.com/rook/rook/pkg/apis/ceph.rook.io/v1 \
          github.com/kube-object-storage/lib-bucket-provisioner/pkg/apis/objectbucket.io/v1alpha1 \
          k8s.io/api/core/v1 \
          k8s.io/apimachinery/pkg/api/resource \
          k8s.io/apimachinery/pkg/apis/meta/v1 \
          k8s.io/apimachinery/pkg/util/intstr
    '';

    installPhase = ''
      mkdir -p "$out"
      mv generate/generated.openapi.go "$out/"
    '';
  }
