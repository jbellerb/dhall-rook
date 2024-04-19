λ(kubernetes : ./../kubernetes.dhall) →
  { compression : Optional (./io.rook.ceph.v1.CompressionSpec.dhall kubernetes)
  , encryption : Optional (./io.rook.ceph.v1.EncryptionSpec.dhall kubernetes)
  }
