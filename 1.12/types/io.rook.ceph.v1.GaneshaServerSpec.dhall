λ(kubernetes : ./../kubernetes.dhall) →
  { active : Natural
  , annotations : Optional (List { mapKey : Text, mapValue : Text })
  , hostNetwork : Optional Bool
  , labels : Optional (List { mapKey : Text, mapValue : Text })
  , livenessProbe : Optional (./io.rook.ceph.v1.ProbeSpec.dhall kubernetes)
  , logLevel : Optional Text
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , priorityClassName : Optional Text
  , resources : Optional kubernetes.ResourceRequirements
  }
