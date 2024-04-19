λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephObjectZoneGroup"
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
