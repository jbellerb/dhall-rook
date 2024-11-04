λ(kubernetes : ./../kubernetes.dhall) →
  { s3 = None (./../types/io.rook.ceph.v1.S3Spec.dhall kubernetes)
  , swift = None (./../types/io.rook.ceph.v1.SwiftSpec.dhall kubernetes)
  }
