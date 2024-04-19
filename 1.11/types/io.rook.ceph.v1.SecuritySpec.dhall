λ(kubernetes : ./../kubernetes.dhall) →
  { keyRotation : Optional (./io.rook.ceph.v1.KeyRotationSpec.dhall kubernetes)
  , kms : Optional (./io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes)
  }
