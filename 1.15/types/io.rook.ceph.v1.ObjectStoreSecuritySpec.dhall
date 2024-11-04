λ(kubernetes : ./../kubernetes.dhall) →
  { SecuritySpec : Optional (./io.rook.ceph.v1.SecuritySpec.dhall kubernetes)
  , s3 : Optional (./io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes)
  }
