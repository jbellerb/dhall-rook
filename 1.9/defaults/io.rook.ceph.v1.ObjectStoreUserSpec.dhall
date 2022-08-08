λ(kubernetes : ./../kubernetes.dhall) →
  { capabilities =
      None (./../types/io.rook.ceph.v1.ObjectUserCapSpec.dhall kubernetes)
  , displayName = None Text
  , quotas =
      None (./../types/io.rook.ceph.v1.ObjectUserQuotaSpec.dhall kubernetes)
  , store = None Text
  }
