λ(kubernetes : ./../kubernetes.dhall) →
  { failureDomainLabel = None Text
  , subFailureDomain = None Text
  , zones =
      None (List (./../types/io.rook.ceph.v1.MonZoneSpec.dhall kubernetes))
  }
