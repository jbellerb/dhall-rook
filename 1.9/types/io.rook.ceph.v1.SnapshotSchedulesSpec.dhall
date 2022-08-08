λ(kubernetes : ./../kubernetes.dhall) →
  { image : Optional Text
  , items :
      Optional (List (./io.rook.ceph.v1.SnapshotSchedule.dhall kubernetes))
  , namespace : Optional Text
  , pool : Optional Text
  }
