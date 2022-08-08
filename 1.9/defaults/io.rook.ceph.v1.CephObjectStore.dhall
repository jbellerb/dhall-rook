λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephObjectStore"
  , status =
      None (./../types/io.rook.ceph.v1.ObjectStoreStatus.dhall kubernetes)
  }
