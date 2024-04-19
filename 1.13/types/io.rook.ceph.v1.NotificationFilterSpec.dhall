λ(kubernetes : ./../kubernetes.dhall) →
  { keyFilters :
      Optional
        (List (./io.rook.ceph.v1.NotificationKeyFilterRule.dhall kubernetes))
  , metadataFilters :
      Optional
        (List (./io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes))
  , tagFilters :
      Optional
        (List (./io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes))
  }
