λ(kubernetes : ./../kubernetes.dhall) →
  { deprecatedOSDs : Optional (List { mapKey : Text, mapValue : List Natural })
  , deviceClasses :
      Optional (List (./io.rook.ceph.v1.DeviceClasses.dhall kubernetes))
  , osd : Optional (./io.rook.ceph.v1.OSDStatus.dhall kubernetes)
  }
