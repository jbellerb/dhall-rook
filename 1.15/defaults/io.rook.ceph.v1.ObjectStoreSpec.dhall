λ(kubernetes : ./../kubernetes.dhall) →
  { allowUsersInNamespaces = None (List Text)
  , auth = None (./../types/io.rook.ceph.v1.AuthSpec.dhall kubernetes)
  , dataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , gateway = None (./../types/io.rook.ceph.v1.GatewaySpec.dhall kubernetes)
  , healthCheck =
      None (./../types/io.rook.ceph.v1.ObjectHealthCheckSpec.dhall kubernetes)
  , hosting =
      None (./../types/io.rook.ceph.v1.ObjectStoreHostingSpec.dhall kubernetes)
  , metadataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete = None Bool
  , protocols = None (./../types/io.rook.ceph.v1.ProtocolSpec.dhall kubernetes)
  , security =
      None (./../types/io.rook.ceph.v1.ObjectStoreSecuritySpec.dhall kubernetes)
  , sharedPools =
      None (./../types/io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  , zone = None (./../types/io.rook.ceph.v1.ZoneSpec.dhall kubernetes)
  }
