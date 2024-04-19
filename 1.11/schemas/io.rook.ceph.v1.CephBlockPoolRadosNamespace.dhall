λ(kubernetes : ./../kubernetes.dhall) →
  { Type =
      ./../types/io.rook.ceph.v1.CephBlockPoolRadosNamespace.dhall kubernetes
  , default =
      ./../defaults/io.rook.ceph.v1.CephBlockPoolRadosNamespace.dhall kubernetes
  }
