λ(kubernetes : ./../kubernetes.dhall) →
  { image : Text
  , additionalFiles :
      Optional (List (./io.rook.ceph.v1.AdditionalVolumeMount.dhall kubernetes))
  , debugLevel : Optional Natural
  , resources : Optional kubernetes.ResourceRequirements
  , sssdConfigFile :
      Optional (./io.rook.ceph.v1.SSSDSidecarConfigFile.dhall kubernetes)
  }
