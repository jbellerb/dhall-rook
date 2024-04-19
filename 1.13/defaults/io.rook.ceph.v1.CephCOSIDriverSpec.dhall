λ(kubernetes : ./../kubernetes.dhall) →
  { deploymentStrategy = None Text
  , image = None Text
  , objectProvisionerImage = None Text
  , placement = None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , resources = None kubernetes.ResourceRequirements
  }
