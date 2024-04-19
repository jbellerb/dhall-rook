λ(kubernetes : ./../kubernetes.dhall) →
  { details = None Text
  , lastChanged = None Text
  , lastChecked = None Text
  , summary =
      None
        ( ./../types/io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall
            kubernetes
        )
  }
