λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.S3Spec.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.S3Spec.dhall kubernetes
  }
