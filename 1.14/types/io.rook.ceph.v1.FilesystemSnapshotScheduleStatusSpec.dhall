λ(kubernetes : ./../kubernetes.dhall) →
  { details : Optional Text
  , lastChanged : Optional Text
  , lastChecked : Optional Text
  , snapshotSchedules :
      Optional
        ( List
            (./io.rook.ceph.v1.FilesystemSnapshotSchedulesSpec.dhall kubernetes)
        )
  }
