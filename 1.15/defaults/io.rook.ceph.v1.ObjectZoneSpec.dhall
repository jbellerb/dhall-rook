λ(kubernetes : ./../kubernetes.dhall) →
  { customEndpoints = None (List Text)
  , dataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , metadataPool = None (./../types/io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete = None Bool
  , sharedPools =
      None (./../types/io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  }
