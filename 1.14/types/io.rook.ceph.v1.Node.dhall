λ(kubernetes : ./../kubernetes.dhall) →
  { config : Optional (List { mapKey : Text, mapValue : Text })
  , deviceFilter : Optional Text
  , devicePathFilter : Optional Text
  , devices : Optional (List (./io.rook.ceph.v1.Device.dhall kubernetes))
  , name : Optional Text
  , resources : Optional kubernetes.ResourceRequirements
  , useAllDevices : Optional Bool
  , volumeClaimTemplates :
      Optional (List (./io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes))
  }
