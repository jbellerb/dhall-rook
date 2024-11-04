λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.PoolMirroringStatus.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.PoolMirroringStatus.dhall kubernetes
  }
