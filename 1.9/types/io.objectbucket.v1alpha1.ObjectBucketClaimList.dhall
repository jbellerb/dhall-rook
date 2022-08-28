λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , items : List (./io.objectbucket.v1alpha1.ObjectBucketClaim.dhall kubernetes)
  , kind : Text
  , metadata : kubernetes.ListMeta
  }
