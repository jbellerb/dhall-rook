λ(kubernetes : ./../kubernetes.dhall) →
  { allowMultiplePerNode = None Bool
  , count = None Natural
  , stretchCluster =
      None (./../types/io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes)
  , volumeClaimTemplate = None kubernetes.PersistentVolumeClaim
  }
