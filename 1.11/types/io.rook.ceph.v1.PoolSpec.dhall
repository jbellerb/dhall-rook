λ(kubernetes : ./../kubernetes.dhall) →
  { compressionMode : Optional Text
  , crushRoot : Optional Text
  , deviceClass : Optional Text
  , enableRBDStats : Optional Bool
  , erasureCoded :
      Optional (./io.rook.ceph.v1.ErasureCodedSpec.dhall kubernetes)
  , failureDomain : Optional Text
  , mirroring : Optional (./io.rook.ceph.v1.MirroringSpec.dhall kubernetes)
  , parameters : Optional (List { mapKey : Text, mapValue : Text })
  , quotas : Optional (./io.rook.ceph.v1.QuotaSpec.dhall kubernetes)
  , replicated : Optional (./io.rook.ceph.v1.ReplicatedSpec.dhall kubernetes)
  , statusCheck :
      Optional (./io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes)
  }
