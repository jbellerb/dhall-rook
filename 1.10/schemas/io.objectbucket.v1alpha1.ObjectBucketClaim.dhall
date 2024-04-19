λ(kubernetes : ./../kubernetes.dhall) →
  { Type =
      ./../types/io.objectbucket.v1alpha1.ObjectBucketClaim.dhall kubernetes
  , default =
      ./../defaults/io.objectbucket.v1alpha1.ObjectBucketClaim.dhall kubernetes
  }
