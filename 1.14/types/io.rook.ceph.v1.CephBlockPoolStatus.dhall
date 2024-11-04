λ(kubernetes : ./../kubernetes.dhall) →
  { conditions : Optional (List (./io.rook.ceph.v1.Condition.dhall kubernetes))
  , info : Optional (List { mapKey : Text, mapValue : Text })
  , mirroringInfo :
      Optional (./io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes)
  , mirroringStatus :
      Optional (./io.rook.ceph.v1.MirroringStatusSpec.dhall kubernetes)
  , observedGeneration : Optional Natural
  , phase : Optional Text
  , snapshotScheduleStatus :
      Optional (./io.rook.ceph.v1.SnapshotScheduleStatusSpec.dhall kubernetes)
  }
