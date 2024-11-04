λ(kubernetes : ./../kubernetes.dhall) →
  { dataPoolName = None Text
  , metadataPoolName = None Text
  , poolPlacements =
      None
        (List (./../types/io.rook.ceph.v1.PoolPlacementSpec.dhall kubernetes))
  , preserveRadosNamespaceDataOnDelete = None Bool
  }
