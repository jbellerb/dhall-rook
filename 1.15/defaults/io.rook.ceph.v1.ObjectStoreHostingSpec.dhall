λ(kubernetes : ./../kubernetes.dhall) →
  { advertiseEndpoint =
      None (./../types/io.rook.ceph.v1.ObjectEndpointSpec.dhall kubernetes)
  , dnsNames = None (List Text)
  }
