λ(kubernetes : ./../kubernetes.dhall) →
  { mon : Optional (./io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  , osd : Optional (./io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  , status : Optional (./io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  }
