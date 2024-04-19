λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.SSSDSpec.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.SSSDSpec.dhall kubernetes
  }
