λ(kubernetes : ./../kubernetes.dhall) →
  { server : ./io.rook.ceph.v1.GaneshaServerSpec.dhall kubernetes
  , rados : Optional (./io.rook.ceph.v1.GaneshaRADOSSpec.dhall kubernetes)
  , security : Optional (./io.rook.ceph.v1.NFSSecuritySpec.dhall kubernetes)
  }
