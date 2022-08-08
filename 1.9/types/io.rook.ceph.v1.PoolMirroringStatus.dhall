λ(kubernetes : ./../kubernetes.dhall) →
  { summary :
      Optional
        (./io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall kubernetes)
  }
