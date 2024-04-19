λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , kind : Text
  , metadata : kubernetes.ObjectMeta
  , spec : Optional (./io.rook.ceph.v1.ObjectRealmSpec.dhall kubernetes)
  , status : Optional (./io.rook.ceph.v1.Status.dhall kubernetes)
  }
