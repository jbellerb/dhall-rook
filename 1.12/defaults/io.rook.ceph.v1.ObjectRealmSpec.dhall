λ(kubernetes : ./../kubernetes.dhall) →
  { pull = None (./../types/io.rook.ceph.v1.PullSpec.dhall kubernetes) }
