λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , peers = None (./../types/io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes)
  , snapshotRetention =
      None
        ( List
            ( ./../types/io.rook.ceph.v1.SnapshotScheduleRetentionSpec.dhall
                kubernetes
            )
        )
  , snapshotSchedules =
      None
        ( List
            (./../types/io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes)
        )
  }
