λ(kubernetes : ./../kubernetes.dhall) →
  { activeStandby = None Bool
  , annotations = None (List { mapKey : Text, mapValue : Text })
  , labels = None (List { mapKey : Text, mapValue : Text })
  , livenessProbe = None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , placement = None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName = None Text
  , resources = None kubernetes.ResourceRequirements
  , startupProbe = None (./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  }
