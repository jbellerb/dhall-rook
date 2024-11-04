λ(kubernetes : ./../kubernetes.dhall) →
  { advertiseEndpoint :
      Optional (./io.rook.ceph.v1.ObjectEndpointSpec.dhall kubernetes)
  , dnsNames : Optional (List Text)
  }
