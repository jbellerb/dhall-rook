λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , mode : Optional Text
  , peers : Optional (./io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes)
  , snapshotSchedules :
      Optional (List (./io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes))
  }
