λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephClient"
  , status = None (./../types/io.rook.ceph.v1.CephClientStatus.dhall kubernetes)
  }
