λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.ObjectEndpoints.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.ObjectEndpoints.dhall kubernetes
  }
