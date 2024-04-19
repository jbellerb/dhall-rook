λ(kubernetes : ./../kubernetes.dhall) →
  { conditions : Optional (List (./io.rook.ceph.v1.Condition.dhall kubernetes))
  , observedGeneration : Optional Natural
  , phase : Optional Text
  }
