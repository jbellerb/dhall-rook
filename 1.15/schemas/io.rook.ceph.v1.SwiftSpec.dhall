λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.SwiftSpec.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.SwiftSpec.dhall kubernetes
  }
