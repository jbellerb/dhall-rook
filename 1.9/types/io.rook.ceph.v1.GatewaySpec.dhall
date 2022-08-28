λ(kubernetes : ./../kubernetes.dhall) →
  { annotations : Optional (List { mapKey : Text, mapValue : Text })
  , caBundleRef : Optional Text
  , externalRgwEndpoints : Optional (List kubernetes.EndpointAddress)
  , hostNetwork : Optional Bool
  , instances : Optional Natural
  , labels : Optional (List { mapKey : Text, mapValue : Text })
  , placement : Optional (./io.rook.ceph.v1.Placement.dhall kubernetes)
  , port : Optional Natural
  , priorityClassName : Optional Text
  , resources : Optional kubernetes.ResourceRequirements
  , securePort : Optional Natural
  , service : Optional (./io.rook.ceph.v1.RGWServiceSpec.dhall kubernetes)
  , sslCertificateRef : Optional Text
  }
