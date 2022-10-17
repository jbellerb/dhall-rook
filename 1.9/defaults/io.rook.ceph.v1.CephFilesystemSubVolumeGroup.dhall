λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephFilesystemSubVolumeGroup"
  , status =
      None
        ( ./../types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
            kubernetes
        )
  }
