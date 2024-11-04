λ(kubernetes : ./../kubernetes.dhall) →
  { details = None Text
  , lastChanged = None Text
  , lastChecked = None Text
  , snapshotSchedules =
      None
        ( List
            ( ./../types/io.rook.ceph.v1.FilesystemSnapshotSchedulesSpec.dhall
                kubernetes
            )
        )
  }
