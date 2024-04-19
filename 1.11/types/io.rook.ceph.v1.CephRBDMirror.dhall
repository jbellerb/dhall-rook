λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , kind : Text
  , metadata : kubernetes.ObjectMeta
  , spec : ./io.rook.ceph.v1.RBDMirroringSpec.dhall kubernetes
  , status : Optional (./io.rook.ceph.v1.Status.dhall kubernetes)
  }
