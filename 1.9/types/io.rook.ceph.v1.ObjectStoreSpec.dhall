λ(kubernetes : ./../kubernetes.dhall) →
  { dataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , gateway : Optional (./io.rook.ceph.v1.GatewaySpec.dhall kubernetes)
  , healthCheck :
      Optional (./io.rook.ceph.v1.BucketHealthCheckSpec.dhall kubernetes)
  , hostNetwork : Optional Bool
  , metadataPool : Optional (./io.rook.ceph.v1.PoolSpec.dhall kubernetes)
  , preservePoolsOnDelete : Optional Bool
  , security : Optional (./io.rook.ceph.v1.SecuritySpec.dhall kubernetes)
  , zone : Optional (./io.rook.ceph.v1.ZoneSpec.dhall kubernetes)
  }
