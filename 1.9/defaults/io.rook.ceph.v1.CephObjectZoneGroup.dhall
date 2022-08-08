λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephObjectZoneGroup"
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
