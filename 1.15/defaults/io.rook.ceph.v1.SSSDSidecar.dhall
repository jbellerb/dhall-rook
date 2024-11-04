λ(kubernetes : ./../kubernetes.dhall) →
  { additionalFiles =
      None
        ( List
            (./../types/io.rook.ceph.v1.AdditionalVolumeMount.dhall kubernetes)
        )
  , debugLevel = None Natural
  , resources = None kubernetes.ResourceRequirements
  , sssdConfigFile =
      None (./../types/io.rook.ceph.v1.SSSDSidecarConfigFile.dhall kubernetes)
  }
