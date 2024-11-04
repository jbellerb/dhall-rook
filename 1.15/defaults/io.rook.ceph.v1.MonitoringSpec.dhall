λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , exporter =
      None (./../types/io.rook.ceph.v1.CephExporterSpec.dhall kubernetes)
  , externalMgrEndpoints = None (List kubernetes.EndpointAddress)
  , externalMgrPrometheusPort = None Natural
  , interval = None Text
  , metricsDisabled = None Bool
  , port = None Natural
  }
