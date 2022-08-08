λ(kubernetes : ./../kubernetes.dhall) →
  { bucketStatus =
      None (./../types/io.rook.ceph.v1.BucketStatus.dhall kubernetes)
  , conditions =
      None (List (./../types/io.rook.ceph.v1.Condition.dhall kubernetes))
  , info = None (List { mapKey : Text, mapValue : Text })
  , message = None Text
  , observedGeneration = None Natural
  , phase = None Text
  }
