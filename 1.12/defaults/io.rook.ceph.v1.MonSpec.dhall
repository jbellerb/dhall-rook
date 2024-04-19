λ(kubernetes : ./../kubernetes.dhall) →
  { allowMultiplePerNode = None Bool
  , count = None Natural
  , failureDomainLabel = None Text
  , stretchCluster =
      None (./../types/io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes)
  , volumeClaimTemplate = None kubernetes.PersistentVolumeClaim
  , zones =
      None (List (./../types/io.rook.ceph.v1.MonZoneSpec.dhall kubernetes))
  }
