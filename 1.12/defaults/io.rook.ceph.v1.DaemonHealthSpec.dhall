λ(kubernetes : ./../kubernetes.dhall) →
  { mon = None (./../types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  , osd = None (./../types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  , status = None (./../types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  }
