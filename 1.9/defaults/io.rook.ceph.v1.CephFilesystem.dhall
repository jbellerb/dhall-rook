λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephFilesystem"
  , status =
      None (./../types/io.rook.ceph.v1.CephFilesystemStatus.dhall kubernetes)
  }
