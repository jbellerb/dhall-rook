λ(kubernetes : ./../kubernetes.dhall) →
  { config = None (List { mapKey : Text, mapValue : Text })
  , deviceFilter = None Text
  , devicePathFilter = None Text
  , devices = None (List (./../types/io.rook.ceph.v1.Device.dhall kubernetes))
  , name = None Text
  , resources = None kubernetes.ResourceRequirements
  , useAllDevices = None Bool
  , volumeClaimTemplates = None (List kubernetes.PersistentVolumeClaim)
  }
