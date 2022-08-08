λ(kubernetes : ./../kubernetes.dhall) →
  { dataPool : ./io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , metadataPool : ./io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , zoneGroup : Text
  }
