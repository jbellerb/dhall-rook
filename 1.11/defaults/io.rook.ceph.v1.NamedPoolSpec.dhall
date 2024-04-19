λ(kubernetes : ./../kubernetes.dhall) →
  { compressionMode = None Text
  , crushRoot = None Text
  , deviceClass = None Text
  , enableRBDStats = None Bool
  , erasureCoded =
      None (./../types/io.rook.ceph.v1.ErasureCodedSpec.dhall kubernetes)
  , failureDomain = None Text
  , mirroring = None (./../types/io.rook.ceph.v1.MirroringSpec.dhall kubernetes)
  , name = None Text
  , parameters = None (List { mapKey : Text, mapValue : Text })
  , quotas = None (./../types/io.rook.ceph.v1.QuotaSpec.dhall kubernetes)
  , replicated =
      None (./../types/io.rook.ceph.v1.ReplicatedSpec.dhall kubernetes)
  , statusCheck =
      None (./../types/io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes)
  }
