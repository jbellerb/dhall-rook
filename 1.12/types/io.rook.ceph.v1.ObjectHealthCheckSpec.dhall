λ(kubernetes : ./../kubernetes.dhall) →
  { readinessProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , startupProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  }
