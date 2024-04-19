λ(kubernetes : ./../kubernetes.dhall) →
  { config : Optional (List { mapKey : Text, mapValue : Text })
  , deviceFilter : Optional Text
  , devicePathFilter : Optional Text
  , devices : Optional (List (./io.rook.ceph.v1.Device.dhall kubernetes))
  , flappingRestartIntervalHours : Optional Natural
  , nodes : Optional (List (./io.rook.ceph.v1.Node.dhall kubernetes))
  , onlyApplyOSDPlacement : Optional Bool
  , storageClassDeviceSets :
      Optional (List (./io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes))
  , store : Optional (./io.rook.ceph.v1.OSDStore.dhall kubernetes)
  , useAllDevices : Optional Bool
  , useAllNodes : Optional Bool
  , volumeClaimTemplates : Optional (List kubernetes.PersistentVolumeClaim)
  }
