λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephObjectZone"
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
