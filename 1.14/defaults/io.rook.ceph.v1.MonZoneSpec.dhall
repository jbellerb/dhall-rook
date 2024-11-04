λ(kubernetes : ./../kubernetes.dhall) →
  { arbiter = None Bool
  , name = None Text
  , volumeClaimTemplate =
      None (./../types/io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes)
  }
