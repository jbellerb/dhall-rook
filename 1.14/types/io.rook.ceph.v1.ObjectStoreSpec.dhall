λ(kubernetes : ./../kubernetes.dhall) →
  { allowUsersInNamespaces : Optional (List Text)
  , dataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , gateway : Optional (./io.rook.ceph.v1.GatewaySpec.dhall kubernetes)
  , healthCheck :
      Optional (./io.rook.ceph.v1.ObjectHealthCheckSpec.dhall kubernetes)
  , hosting :
      Optional (./io.rook.ceph.v1.ObjectStoreHostingSpec.dhall kubernetes)
  , metadataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete : Optional Bool
  , security :
      Optional (./io.rook.ceph.v1.ObjectStoreSecuritySpec.dhall kubernetes)
  , sharedPools :
      Optional (./io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  , zone : Optional (./io.rook.ceph.v1.ZoneSpec.dhall kubernetes)
  }
