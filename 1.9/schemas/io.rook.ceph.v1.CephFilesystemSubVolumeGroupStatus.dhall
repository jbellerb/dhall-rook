λ(kubernetes : ./../kubernetes.dhall) →
  { Type =
      ./../types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
        kubernetes
  , default =
      ./../defaults/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
        kubernetes
  }
