λ(kubernetes : ./../kubernetes.dhall) →
  { allowMultiplePerNode = None Bool
  , count = None Natural
  , modules = None (List (./../types/io.rook.ceph.v1.Module.dhall kubernetes))
  }
