λ(kubernetes : ./../kubernetes.dhall) →
  { mirroring =
      None (./../types/io.rook.ceph.v1.FSMirroringSpec.dhall kubernetes)
  , preserveFilesystemOnDelete = None Bool
  , preservePoolsOnDelete = None Bool
  , statusCheck =
      None (./../types/io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes)
  }
