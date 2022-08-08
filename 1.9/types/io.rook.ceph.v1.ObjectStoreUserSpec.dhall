λ(kubernetes : ./../kubernetes.dhall) →
  { capabilities :
      Optional (./io.rook.ceph.v1.ObjectUserCapSpec.dhall kubernetes)
  , displayName : Optional Text
  , quotas : Optional (./io.rook.ceph.v1.ObjectUserQuotaSpec.dhall kubernetes)
  , store : Optional Text
  }
