λ(kubernetes : ./../kubernetes.dhall) →
  { details : Optional Text
  , lastChanged : Optional Text
  , lastChecked : Optional Text
  , summary :
      Optional
        (./io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall kubernetes)
  }
