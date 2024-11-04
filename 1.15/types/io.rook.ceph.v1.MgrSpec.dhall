λ(kubernetes : ./../kubernetes.dhall) →
  { allowMultiplePerNode : Optional Bool
  , count : Optional Natural
  , modules : Optional (List (./io.rook.ceph.v1.Module.dhall kubernetes))
  }
