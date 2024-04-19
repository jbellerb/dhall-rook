λ(kubernetes : ./../kubernetes.dhall) →
  { deviceFilter : Optional Text
  , devicePathFilter : Optional Text
  , devices : Optional (List (./io.rook.ceph.v1.Device.dhall kubernetes))
  , useAllDevices : Optional Bool
  , volumeClaimTemplates : Optional (List kubernetes.PersistentVolumeClaim)
  }
