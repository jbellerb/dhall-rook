λ(kubernetes : ./../kubernetes.dhall) →
  { deprecatedOSDs = None (List { mapKey : Text, mapValue : List Natural })
  , deviceClasses =
      None (List (./../types/io.rook.ceph.v1.DeviceClasses.dhall kubernetes))
  , osd = None (./../types/io.rook.ceph.v1.OSDStatus.dhall kubernetes)
  }
