λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.EndpointAddress.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.EndpointAddress.dhall kubernetes
  }
