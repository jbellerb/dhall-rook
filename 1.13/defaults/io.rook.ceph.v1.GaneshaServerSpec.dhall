λ(kubernetes : ./../kubernetes.dhall) →
  { annotations = None (List { mapKey : Text, mapValue : Text })
  , hostNetwork = None Bool
  , labels = None (List { mapKey : Text, mapValue : Text })
  , livenessProbe = None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , logLevel = None Text
  , placement = None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName = None Text
  , resources = None kubernetes.ResourceRequirements
  }
