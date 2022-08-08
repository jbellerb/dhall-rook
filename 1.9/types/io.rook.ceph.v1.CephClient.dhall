λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , kind : Text
  , metadata : kubernetes.ObjectMeta
  , spec : ./io.rook.ceph.v1.ClientSpec.dhall kubernetes
  , status : Optional (./io.rook.ceph.v1.CephClientStatus.dhall kubernetes)
  }
