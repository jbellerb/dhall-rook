λ(kubernetes : ./../kubernetes.dhall) →
  { daemon_id : Optional Natural
  , filesystems :
      Optional (List (./io.rook.ceph.v1.FilesystemsSpec.dhall kubernetes))
  }
