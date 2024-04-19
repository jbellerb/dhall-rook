λ(kubernetes : ./../kubernetes.dhall) →
  { SecuritySpec =
      None (./../types/io.rook.ceph.v1.SecuritySpec.dhall kubernetes)
  , s3 =
      None
        (./../types/io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes)
  }
