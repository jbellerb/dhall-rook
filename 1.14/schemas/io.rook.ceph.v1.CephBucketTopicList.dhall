λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.CephBucketTopicList.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.CephBucketTopicList.dhall kubernetes
  }
