λ(kubernetes : ./../kubernetes.dhall) →
  { fs = None Text
  , path = None Text
  , rel_path = None Text
  , retention =
      None
        ( ./../types/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusRetention.dhall
            kubernetes
        )
  , schedule = None Text
  , subvol = None Text
  }
