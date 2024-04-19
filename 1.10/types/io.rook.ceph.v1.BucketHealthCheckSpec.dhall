λ(kubernetes : ./../kubernetes.dhall) →
  { bucket : Optional (./io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  , livenessProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , readinessProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , startupProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  }
