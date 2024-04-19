λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.CephVersionSpec.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.CephVersionSpec.dhall kubernetes
  }
