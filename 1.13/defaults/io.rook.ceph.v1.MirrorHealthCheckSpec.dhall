λ(kubernetes : ./../kubernetes.dhall) →
  { mirror = None (./../types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  }
