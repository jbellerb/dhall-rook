λ(kubernetes : ./../kubernetes.dhall) →
  { ceph = None (./../types/io.rook.ceph.v1.CephStatus.dhall kubernetes)
  , conditions =
      None (List (./../types/io.rook.ceph.v1.Condition.dhall kubernetes))
  , message = None Text
  , observedGeneration = None Natural
  , phase = None Text
  , state = None Text
  , storage = None (./../types/io.rook.ceph.v1.CephStorage.dhall kubernetes)
  , version = None (./../types/io.rook.ceph.v1.ClusterVersion.dhall kubernetes)
  }
