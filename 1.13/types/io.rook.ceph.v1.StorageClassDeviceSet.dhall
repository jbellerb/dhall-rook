λ(kubernetes : ./../kubernetes.dhall) →
  { count : Natural
  , name : Text
  , volumeClaimTemplates :
      List (./io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes)
  , config : Optional (List { mapKey : Text, mapValue : Text })
  , encrypted : Optional Bool
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , portable : Optional Bool
  , preparePlacement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , resources : Optional kubernetes.ResourceRequirements
  , schedulerName : Optional Text
  , tuneDeviceClass : Optional Bool
  , tuneFastDeviceClass : Optional Bool
  }
