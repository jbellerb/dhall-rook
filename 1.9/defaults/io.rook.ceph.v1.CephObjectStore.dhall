λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephObjectStore"
  , status =
      None (./../types/io.rook.ceph.v1.ObjectStoreStatus.dhall kubernetes)
  }
