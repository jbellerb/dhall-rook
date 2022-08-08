λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , mode = None Text
  , peers = None (./../types/io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes)
  , snapshotSchedules =
      None
        ( List
            (./../types/io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes)
        )
  }
