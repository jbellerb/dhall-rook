λ(kubernetes : ./../kubernetes.dhall) →
  { ceph : Optional (./io.rook.ceph.v1.CephStatus.dhall kubernetes)
  , conditions : Optional (List (./io.rook.ceph.v1.Condition.dhall kubernetes))
  , message : Optional Text
  , observedGeneration : Optional Natural
  , phase : Optional Text
  , state : Optional Text
  , storage : Optional (./io.rook.ceph.v1.CephStorage.dhall kubernetes)
  , version : Optional (./io.rook.ceph.v1.ClusterVersion.dhall kubernetes)
  }
