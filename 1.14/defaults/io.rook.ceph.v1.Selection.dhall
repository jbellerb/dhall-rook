λ(kubernetes : ./../kubernetes.dhall) →
  { deviceFilter = None Text
  , devicePathFilter = None Text
  , devices = None (List (./../types/io.rook.ceph.v1.Device.dhall kubernetes))
  , useAllDevices = None Bool
  , volumeClaimTemplates =
      None
        (List (./../types/io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes))
  }
