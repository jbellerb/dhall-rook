λ(kubernetes : ./../kubernetes.dhall) →
  { annotations = None (List { mapKey : Text, mapValue : Text })
  , caBundleRef = None Text
  , externalRgwEndpoints = None (List kubernetes.EndpointAddress)
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
