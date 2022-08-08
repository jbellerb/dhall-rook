λ(kubernetes : ./../kubernetes.dhall) →
  { kms =
      None
        (./../types/io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes)
  }
