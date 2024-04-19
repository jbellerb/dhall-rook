λ(kubernetes : ./../kubernetes.dhall) →
  { bucketStatus =
      None (./../types/io.rook.ceph.v1.BucketStatus.dhall kubernetes)
  , conditions =
      None (List (./../types/io.rook.ceph.v1.Condition.dhall kubernetes))
  , endpoints =
      None (./../types/io.rook.ceph.v1.ObjectEndpoints.dhall kubernetes)
  , info = None (List { mapKey : Text, mapValue : Text })
  , message = None Text
  , observedGeneration = None Natural
  , phase = None Text
  }
