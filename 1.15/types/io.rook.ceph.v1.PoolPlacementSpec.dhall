λ(kubernetes : ./../kubernetes.dhall) →
  { dataPoolName : Text
  , metadataPoolName : Text
  , name : Text
  , dataNonECPoolName : Optional Text
  , storageClasses :
      Optional
        (List (./io.rook.ceph.v1.PlacementStorageClassSpec.dhall kubernetes))
  }
