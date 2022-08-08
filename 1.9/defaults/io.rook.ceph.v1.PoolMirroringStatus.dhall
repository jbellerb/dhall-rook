λ(kubernetes : ./../kubernetes.dhall) →
  { summary =
      None
        ( ./../types/io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall
            kubernetes
        )
  }
