λ(kubernetes : ./../kubernetes.dhall) →
  { fs : Optional Text
  , path : Optional Text
  , rel_path : Optional Text
  , retention :
      Optional
        ( ./io.rook.ceph.v1.FilesystemSnapshotScheduleStatusRetention.dhall
            kubernetes
        )
  , schedule : Optional Text
  , subvol : Optional Text
  }
