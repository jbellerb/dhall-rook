λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephBlockPoolRadosNamespace"
  , status =
      None
        ( ./../types/io.rook.ceph.v1.CephBlockPoolRadosNamespaceStatus.dhall
            kubernetes
        )
  }
