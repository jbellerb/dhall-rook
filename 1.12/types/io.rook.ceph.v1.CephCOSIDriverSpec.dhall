λ(kubernetes : ./../kubernetes.dhall) →
  { deploymentStrategy : Optional Text
  , image : Optional Text
  , objectProvisionerImage : Optional Text
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , resources : Optional kubernetes.ResourceRequirements
  }
