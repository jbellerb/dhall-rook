λ(kubernetes : ./../kubernetes.dhall) →
  { conditions =
      None (List (./../types/io.rook.ceph.v1.Condition.dhall kubernetes))
  , info = None (List { mapKey : Text, mapValue : Text })
  , mirroringStatus =
      None
        ( ./../types/io.rook.ceph.v1.FilesystemMirroringInfoSpec.dhall
            kubernetes
        )
  , observedGeneration = None Natural
  , phase = None Text
  , snapshotScheduleStatus =
      None
        ( ./../types/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusSpec.dhall
            kubernetes
        )
  }
