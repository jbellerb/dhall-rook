λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , externalMgrEndpoints = None (List kubernetes.EndpointAddress)
  , externalMgrPrometheusPort = None Natural
  }
