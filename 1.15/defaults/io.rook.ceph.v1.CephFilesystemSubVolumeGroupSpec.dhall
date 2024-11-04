λ(kubernetes : ./../kubernetes.dhall) →
  { dataPoolName = None Text
  , name = None Text
  , pinning =
      None
        ( ./../types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpecPinning.dhall
            kubernetes
        )
  , quota = None Text
  }
