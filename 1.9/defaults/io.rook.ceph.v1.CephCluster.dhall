λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephCluster"
  , status = None (./../types/io.rook.ceph.v1.ClusterStatus.dhall kubernetes)
  }
