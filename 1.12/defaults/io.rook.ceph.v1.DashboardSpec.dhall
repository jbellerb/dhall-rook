λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , port = None Natural
  , prometheusEndpoint = None Text
  , prometheusEndpointSSLVerify = None Bool
  , ssl = None Bool
  , urlPrefix = None Text
  }
