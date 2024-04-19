λ(kubernetes : ./../kubernetes.dhall) →
  { deviceClasses :
      Optional (List (./io.rook.ceph.v1.DeviceClasses.dhall kubernetes))
  }
