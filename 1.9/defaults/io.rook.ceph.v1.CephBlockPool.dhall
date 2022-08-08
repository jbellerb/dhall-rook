λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephBlockPool"
  , status =
      None (./../types/io.rook.ceph.v1.CephBlockPoolStatus.dhall kubernetes)
  }
