λ(kubernetes : ./../kubernetes.dhall) →
  { arbiter : Optional Bool
  , name : Optional Text
  , volumeClaimTemplate :
      Optional (./io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes)
  }
