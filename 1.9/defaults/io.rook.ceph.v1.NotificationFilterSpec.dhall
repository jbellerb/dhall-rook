λ(kubernetes : ./../kubernetes.dhall) →
  { keyFilters =
      None
        ( List
            ( ./../types/io.rook.ceph.v1.NotificationKeyFilterRule.dhall
                kubernetes
            )
        )
  , metadataFilters =
      None
        ( List
            (./../types/io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes)
        )
  , tagFilters =
      None
        ( List
            (./../types/io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes)
        )
  }
