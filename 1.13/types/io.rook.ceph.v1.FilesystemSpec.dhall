λ(kubernetes : ./../kubernetes.dhall) →
  { dataPools : List (./io.rook.ceph.v1.NamedPoolSpec.dhall kubernetes)
  , metadataPool : ./io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , metadataServer : ./io.rook.ceph.v1.MetadataServerSpec.dhall kubernetes
  , mirroring : Optional (./io.rook.ceph.v1.FSMirroringSpec.dhall kubernetes)
  , preserveFilesystemOnDelete : Optional Bool
  , preservePoolsOnDelete : Optional Bool
  , statusCheck :
      Optional (./io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes)
  }
