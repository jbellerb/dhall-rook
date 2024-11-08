λ(kubernetes : ./../kubernetes.dhall) →
  { additionalVolumeMounts =
      None
        ( List
            (./../types/io.rook.ceph.v1.AdditionalVolumeMount.dhall kubernetes)
        )
  , annotations = None (List { mapKey : Text, mapValue : Text })
  , caBundleRef = None Text
  , dashboardEnabled = None Bool
  , disableMultisiteSyncTraffic = None Bool
  , externalRgwEndpoints =
      None (List (./../types/io.rook.ceph.v1.EndpointAddress.dhall kubernetes))
  , hostNetwork = None Bool
  , instances = None Natural
  , labels = None (List { mapKey : Text, mapValue : Text })
  , placement = None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , port = None Natural
  , priorityClassName = None Text
  , resources = None kubernetes.ResourceRequirements
  , securePort = None Natural
  , service = None (./../types/io.rook.ceph.v1.RGWServiceSpec.dhall kubernetes)
  , sslCertificateRef = None Text
  }
