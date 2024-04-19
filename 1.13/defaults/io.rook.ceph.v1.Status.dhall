λ(kubernetes : ./../kubernetes.dhall) →
  { conditions =
      None (List (./../types/io.rook.ceph.v1.Condition.dhall kubernetes))
  , observedGeneration = None Natural
  , phase = None Text
  }
