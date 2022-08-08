λ(kubernetes : ./../kubernetes.dhall) →
  { bucketStatus : Optional (./io.rook.ceph.v1.BucketStatus.dhall kubernetes)
  , conditions : Optional (List (./io.rook.ceph.v1.Condition.dhall kubernetes))
  , info : Optional (List { mapKey : Text, mapValue : Text })
  , message : Optional Text
  , observedGeneration : Optional Natural
  , phase : Optional Text
  }
