λ(kubernetes : ./../kubernetes.dhall) →
  { deviceClasses =
      None (List (./../types/io.rook.ceph.v1.DeviceClasses.dhall kubernetes))
  , osd = None (./../types/io.rook.ceph.v1.OSDStatus.dhall kubernetes)
  }
