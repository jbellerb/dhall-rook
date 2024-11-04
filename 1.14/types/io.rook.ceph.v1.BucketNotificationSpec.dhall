λ(kubernetes : ./../kubernetes.dhall) →
  { topic : Text
  , events : Optional (List Text)
  , filter :
      Optional (./io.rook.ceph.v1.NotificationFilterSpec.dhall kubernetes)
  }
