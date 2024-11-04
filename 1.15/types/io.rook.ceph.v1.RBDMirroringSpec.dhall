λ(kubernetes : ./../kubernetes.dhall) →
  { count : Natural
  , annotations : Optional (List { mapKey : Text, mapValue : Text })
  , labels : Optional (List { mapKey : Text, mapValue : Text })
  , peers : Optional (./io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes)
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName : Optional Text
  , resources : Optional kubernetes.ResourceRequirements
  }
