λ(kubernetes : ./../kubernetes.dhall) →
  { sidecar : Optional (./io.rook.ceph.v1.SSSDSidecar.dhall kubernetes) }
