λ(kubernetes : ./../kubernetes.dhall) →
  { dataPool : ./io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , metadataPool : ./io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , zoneGroup : Text
  , customEndpoints : Optional (List Text)
  , preservePoolsOnDelete : Optional Bool
  , sharedPools :
      Optional (./io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  }
