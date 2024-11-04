λ(kubernetes : ./../kubernetes.dhall) →
  { pull : Optional (./io.rook.ceph.v1.PullSpec.dhall kubernetes) }
