λ(kubernetes : ./../kubernetes.dhall) →
  { rados = None (./../types/io.rook.ceph.v1.GaneshaRADOSSpec.dhall kubernetes)
  }
