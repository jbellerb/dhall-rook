λ(kubernetes : ./../kubernetes.dhall) →
  { deviceClasses :
      Optional (List (./io.rook.ceph.v1.DeviceClasses.dhall kubernetes))
  , osd : Optional (./io.rook.ceph.v1.OSDStatus.dhall kubernetes)
  }
