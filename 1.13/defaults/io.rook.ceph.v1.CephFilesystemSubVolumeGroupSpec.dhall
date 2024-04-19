λ(kubernetes : ./../kubernetes.dhall) →
  { name = None Text
  , pinning =
      None
        ( ./../types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpecPinning.dhall
            kubernetes
        )
  }
