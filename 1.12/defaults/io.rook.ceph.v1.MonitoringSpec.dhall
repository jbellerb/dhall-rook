λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , externalMgrEndpoints = None (List kubernetes.EndpointAddress)
  , externalMgrPrometheusPort = None Natural
  , interval = None Text
  , metricsDisabled = None Bool
  , port = None Natural
  }
