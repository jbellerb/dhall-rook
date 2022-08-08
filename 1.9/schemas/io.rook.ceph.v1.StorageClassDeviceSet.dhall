λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes
  , default =
      ./../defaults/io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes
  }
