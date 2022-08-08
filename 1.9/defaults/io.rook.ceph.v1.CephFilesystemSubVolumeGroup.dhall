λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephFilesystemSubVolumeGroup"
  , status =
      None
        ( ./../types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
            kubernetes
        )
  }
