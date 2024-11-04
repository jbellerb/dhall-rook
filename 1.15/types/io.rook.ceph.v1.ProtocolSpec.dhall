λ(kubernetes : ./../kubernetes.dhall) →
  { s3 : Optional (./io.rook.ceph.v1.S3Spec.dhall kubernetes)
  , swift : Optional (./io.rook.ceph.v1.SwiftSpec.dhall kubernetes)
  }
