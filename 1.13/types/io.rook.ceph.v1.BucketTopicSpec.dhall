λ(kubernetes : ./../kubernetes.dhall) →
  { endpoint : ./io.rook.ceph.v1.TopicEndpointSpec.dhall kubernetes
  , objectStoreName : Text
  , objectStoreNamespace : Text
  , opaqueData : Optional Text
  , persistent : Optional Bool
  }
