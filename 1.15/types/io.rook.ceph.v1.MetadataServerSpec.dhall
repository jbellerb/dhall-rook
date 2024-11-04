λ(kubernetes : ./../kubernetes.dhall) →
  { activeCount : Natural
  , activeStandby : Optional Bool
  , annotations : Optional (List { mapKey : Text, mapValue : Text })
  , labels : Optional (List { mapKey : Text, mapValue : Text })
  , livenessProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName : Optional Text
  , resources : Optional kubernetes.ResourceRequirements
  , startupProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  }
