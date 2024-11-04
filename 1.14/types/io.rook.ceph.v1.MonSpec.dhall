λ(kubernetes : ./../kubernetes.dhall) →
  { allowMultiplePerNode : Optional Bool
  , count : Optional Natural
  , failureDomainLabel : Optional Text
  , stretchCluster :
      Optional (./io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes)
  , volumeClaimTemplate :
      Optional (./io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes)
  , zones : Optional (List (./io.rook.ceph.v1.MonZoneSpec.dhall kubernetes))
  }
