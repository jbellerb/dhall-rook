λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephFilesystem"
  , status =
      None (./../types/io.rook.ceph.v1.CephFilesystemStatus.dhall kubernetes)
  }
