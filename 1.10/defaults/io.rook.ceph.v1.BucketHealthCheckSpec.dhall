λ(kubernetes : ./../kubernetes.dhall) →
  { bucket = None (./../types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes)
  , livenessProbe = None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , readinessProbe =
      None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , startupProbe = None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  }
