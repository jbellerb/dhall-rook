λ(kubernetes : ./../kubernetes.dhall) →
  { size : Natural
  , hybridStorage :
      Optional (./io.rook.ceph.v1.HybridStorageSpec.dhall kubernetes)
  , replicasPerFailureDomain : Optional Natural
  , requireSafeReplicaSize : Optional Bool
  , subFailureDomain : Optional Text
  , targetSizeRatio : Optional Double
  }
