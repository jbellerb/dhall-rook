λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , peers : Optional (./io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes)
  , snapshotRetention :
      Optional
        ( List
            (./io.rook.ceph.v1.SnapshotScheduleRetentionSpec.dhall kubernetes)
        )
  , snapshotSchedules :
      Optional (List (./io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes))
  }
