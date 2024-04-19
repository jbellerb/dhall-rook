λ(kubernetes : ./../kubernetes.dhall) →
  { failureDomainLabel : Optional Text
  , subFailureDomain : Optional Text
  , zones :
      Optional
        (List (./io.rook.ceph.v1.StretchClusterZoneSpec.dhall kubernetes))
  }
