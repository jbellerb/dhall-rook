λ(kubernetes : ./../kubernetes.dhall) →
  { rados = None (./../types/io.rook.ceph.v1.GaneshaRADOSSpec.dhall kubernetes)
  , security =
      None (./../types/io.rook.ceph.v1.NFSSecuritySpec.dhall kubernetes)
  }
