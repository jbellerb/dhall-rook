λ(kubernetes : ./../kubernetes.dhall) →
  { compression =
      None (./../types/io.rook.ceph.v1.CompressionSpec.dhall kubernetes)
  , encryption =
      None (./../types/io.rook.ceph.v1.EncryptionSpec.dhall kubernetes)
  }
