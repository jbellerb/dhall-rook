λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , items : List (./io.rook.ceph.v1.CephBucketTopic.dhall kubernetes)
  , kind : Text
  , metadata : kubernetes.ListMeta
  }
