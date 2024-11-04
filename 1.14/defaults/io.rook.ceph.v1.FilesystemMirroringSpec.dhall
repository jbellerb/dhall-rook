λ(kubernetes : ./../kubernetes.dhall) →
  { annotations = None (List { mapKey : Text, mapValue : Text })
  , labels = None (List { mapKey : Text, mapValue : Text })
  , placement = None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName = None Text
  , resources = None kubernetes.ResourceRequirements
  }
