λ(kubernetes : ./../kubernetes.dhall) →
  { readinessProbe =
      None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , startupProbe = None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  }
