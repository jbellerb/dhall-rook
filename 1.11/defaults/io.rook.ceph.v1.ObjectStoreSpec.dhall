λ(kubernetes : ./../kubernetes.dhall) →
  { dataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , gateway = None (./../types/io.rook.ceph.v1.GatewaySpec.dhall kubernetes)
  , healthCheck =
      None (./../types/io.rook.ceph.v1.ObjectHealthCheckSpec.dhall kubernetes)
  , metadataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete = None Bool
  , security =
      None (./../types/io.rook.ceph.v1.ObjectStoreSecuritySpec.dhall kubernetes)
  , zone = None (./../types/io.rook.ceph.v1.ZoneSpec.dhall kubernetes)
  }
