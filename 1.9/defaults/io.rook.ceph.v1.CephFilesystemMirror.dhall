λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephFilesystemMirror"
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
