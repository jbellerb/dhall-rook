λ(kubernetes : ./../kubernetes.dhall) →
  { config : Optional (List { mapKey : Text, mapValue : Text })
  , deviceFilter : Optional Text
  , devicePathFilter : Optional Text
  , devices : Optional (List (./io.rook.ceph.v1.Device.dhall kubernetes))
  , nodes : Optional (List (./io.rook.ceph.v1.Node.dhall kubernetes))
  , onlyApplyOSDPlacement : Optional Bool
  , storageClassDeviceSets :
      Optional (List (./io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes))
  , useAllDevices : Optional Bool
  , useAllNodes : Optional Bool
  , volumeClaimTemplates : Optional (List kubernetes.PersistentVolumeClaim)
  }
