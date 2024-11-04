λ(kubernetes : ./../kubernetes.dhall) →
  { daemon_id = None Natural
  , filesystems =
      None (List (./../types/io.rook.ceph.v1.FilesystemsSpec.dhall kubernetes))
  }
