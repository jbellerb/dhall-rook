λ(kubernetes : ./../kubernetes.dhall) →
  { allowUsersInNamespaces : Optional (List Text)
  , auth : Optional (./io.rook.ceph.v1.AuthSpec.dhall kubernetes)
  , dataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , gateway : Optional (./io.rook.ceph.v1.GatewaySpec.dhall kubernetes)
  , healthCheck :
      Optional (./io.rook.ceph.v1.ObjectHealthCheckSpec.dhall kubernetes)
  , hosting :
      Optional (./io.rook.ceph.v1.ObjectStoreHostingSpec.dhall kubernetes)
  , metadataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete : Optional Bool
  , protocols : Optional (./io.rook.ceph.v1.ProtocolSpec.dhall kubernetes)
  , security :
      Optional (./io.rook.ceph.v1.ObjectStoreSecuritySpec.dhall kubernetes)
  , sharedPools :
      Optional (./io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  , zone : Optional (./io.rook.ceph.v1.ZoneSpec.dhall kubernetes)
  }
