λ(kubernetes : ./../kubernetes.dhall) →
  { hybridStorage =
      None (./../types/io.rook.ceph.v1.HybridStorageSpec.dhall kubernetes)
  , replicasPerFailureDomain = None Natural
  , requireSafeReplicaSize = None Bool
  , subFailureDomain = None Text
  , targetSizeRatio = None Double
  }
