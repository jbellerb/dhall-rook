λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , externalMgrEndpoints : Optional (List kubernetes.EndpointAddress)
  , externalMgrPrometheusPort : Optional Natural
  , interval : Optional Text
  , metricsDisabled : Optional Bool
  , port : Optional Natural
  }
