λ(kubernetes : ./../kubernetes.dhall) →
  { zoneGroup : Text
  , customEndpoints : Optional (List Text)
  , dataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , metadataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete : Optional Bool
  , sharedPools :
      Optional (./io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  }
