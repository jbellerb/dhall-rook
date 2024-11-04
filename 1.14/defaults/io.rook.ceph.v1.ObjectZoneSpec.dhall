λ(kubernetes : ./../kubernetes.dhall) →
  { customEndpoints = None (List Text)
  , preservePoolsOnDelete = None Bool
  , sharedPools =
      None (./../types/io.rook.ceph.v1.ObjectSharedPoolsSpec.dhall kubernetes)
  }
