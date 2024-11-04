λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes
  }
