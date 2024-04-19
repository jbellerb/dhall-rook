λ(kubernetes : ./../kubernetes.dhall) →
  { config = None (List { mapKey : Text, mapValue : Text })
  , deviceFilter = None Text
  , devicePathFilter = None Text
  , devices = None (List (./../types/io.rook.ceph.v1.Device.dhall kubernetes))
  , flappingRestartIntervalHours = None Natural
  , nodes = None (List (./../types/io.rook.ceph.v1.Node.dhall kubernetes))
  , onlyApplyOSDPlacement = None Bool
  , storageClassDeviceSets =
      None
        ( List
            (./../types/io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes)
        )
  , store = None (./../types/io.rook.ceph.v1.OSDStore.dhall kubernetes)
  , useAllDevices = None Bool
  , useAllNodes = None Bool
  , volumeClaimTemplates =
      None
        (List (./../types/io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes))
  }
