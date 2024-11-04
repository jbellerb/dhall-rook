λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , port : Optional Natural
  , prometheusEndpoint : Optional Text
  , prometheusEndpointSSLVerify : Optional Bool
  , ssl : Optional Bool
  , urlPrefix : Optional Text
  }
