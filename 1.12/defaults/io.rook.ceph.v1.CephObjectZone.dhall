λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephObjectZone"
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
