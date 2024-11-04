λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , kind : Text
  , metadata : kubernetes.ObjectMeta
  , spec :
      Optional
        (./io.objectbucket.v1alpha1.ObjectBucketClaimSpec.dhall kubernetes)
  , status :
      Optional
        (./io.objectbucket.v1alpha1.ObjectBucketClaimStatus.dhall kubernetes)
  }
