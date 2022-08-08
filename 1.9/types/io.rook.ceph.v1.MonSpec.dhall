λ(kubernetes : ./../kubernetes.dhall) →
  { allowMultiplePerNode : Optional Bool
  , count : Optional Natural
  , stretchCluster :
      Optional (./io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes)
  , volumeClaimTemplate : Optional kubernetes.PersistentVolumeClaim
  }
