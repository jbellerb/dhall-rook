λ(kubernetes : ./../kubernetes.dhall) →
  { conditions : Optional (List (./io.rook.ceph.v1.Condition.dhall kubernetes))
  , info : Optional (List { mapKey : Text, mapValue : Text })
  , mirroringStatus :
      Optional (./io.rook.ceph.v1.FilesystemMirroringInfoSpec.dhall kubernetes)
  , observedGeneration : Optional Natural
  , phase : Optional Text
  , snapshotScheduleStatus :
      Optional
        ( ./io.rook.ceph.v1.FilesystemSnapshotScheduleStatusSpec.dhall
            kubernetes
        )
  }
