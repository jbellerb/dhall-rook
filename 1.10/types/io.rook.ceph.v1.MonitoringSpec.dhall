λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , externalMgrEndpoints : Optional (List kubernetes.EndpointAddress)
  , externalMgrPrometheusPort : Optional Natural
  }
