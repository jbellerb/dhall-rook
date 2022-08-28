λ(kubernetes : ./../kubernetes.dhall) →
  { dataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , gateway = None (./../types/io.rook.ceph.v1.GatewaySpec.dhall kubernetes)
  , healthCheck =
      None (./../types/io.rook.ceph.v1.BucketHealthCheckSpec.dhall kubernetes)
  , metadataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete = None Bool
  , security = None (./../types/io.rook.ceph.v1.SecuritySpec.dhall kubernetes)
  , zone = None (./../types/io.rook.ceph.v1.ZoneSpec.dhall kubernetes)
  }
