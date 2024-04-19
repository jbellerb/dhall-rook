λ(kubernetes : ./../kubernetes.dhall) →
  { image = None Text
  , items =
      None (List (./../types/io.rook.ceph.v1.SnapshotSchedule.dhall kubernetes))
  , namespace = None Text
  , pool = None Text
  }
