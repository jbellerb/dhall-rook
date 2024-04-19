λ(kubernetes : ./../kubernetes.dhall) →
  { events = None (List Text)
  , filter =
      None (./../types/io.rook.ceph.v1.NotificationFilterSpec.dhall kubernetes)
  }
