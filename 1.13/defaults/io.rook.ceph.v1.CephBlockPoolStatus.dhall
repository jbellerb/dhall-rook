λ(kubernetes : ./../kubernetes.dhall) →
  { conditions =
      None (List (./../types/io.rook.ceph.v1.Condition.dhall kubernetes))
  , info = None (List { mapKey : Text, mapValue : Text })
  , mirroringInfo =
      None (./../types/io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes)
  , mirroringStatus =
      None (./../types/io.rook.ceph.v1.MirroringStatusSpec.dhall kubernetes)
  , observedGeneration = None Natural
  , phase = None Text
  , snapshotScheduleStatus =
      None
        (./../types/io.rook.ceph.v1.SnapshotScheduleStatusSpec.dhall kubernetes)
  }
