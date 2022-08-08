λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephObjectStoreUser"
  , status =
      None (./../types/io.rook.ceph.v1.ObjectStoreUserStatus.dhall kubernetes)
  }
