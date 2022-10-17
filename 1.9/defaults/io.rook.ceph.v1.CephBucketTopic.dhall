λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephBucketTopic"
  , status =
      None (./../types/io.rook.ceph.v1.BucketTopicStatus.dhall kubernetes)
  }
