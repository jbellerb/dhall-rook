λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.CephCluster.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.CephCluster.dhall kubernetes
  }
