λ(kubernetes : ./../kubernetes.dhall) →
  { dataPoolName : Optional Text
  , metadataPoolName : Optional Text
  , poolPlacements :
      Optional (List (./io.rook.ceph.v1.PoolPlacementSpec.dhall kubernetes))
  , preserveRadosNamespaceDataOnDelete : Optional Bool
  }
