λ(kubernetes : ./../kubernetes.dhall) →
  { keyRotation =
      None (./../types/io.rook.ceph.v1.KeyRotationSpec.dhall kubernetes)
  , kms =
      None
        (./../types/io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes)
  }
