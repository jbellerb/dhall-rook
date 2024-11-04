λ(kubernetes : ./../kubernetes.dhall) →
  { annotations : Optional (List { mapKey : Text, mapValue : Text })
  , labels : Optional (List { mapKey : Text, mapValue : Text })
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName : Optional Text
  , resources : Optional kubernetes.ResourceRequirements
  }
