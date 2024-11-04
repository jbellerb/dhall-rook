λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , exporter : Optional (./io.rook.ceph.v1.CephExporterSpec.dhall kubernetes)
  , externalMgrEndpoints : Optional (List kubernetes.EndpointAddress)
  , externalMgrPrometheusPort : Optional Natural
  , interval : Optional Text
  , metricsDisabled : Optional Bool
  , port : Optional Natural
  }
