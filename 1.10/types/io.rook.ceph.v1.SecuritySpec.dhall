λ(kubernetes : ./../kubernetes.dhall) →
  { kms : Optional (./io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes)
  }
