λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1alpha1"
  , kind = "ObjectBucketClaim"
  , spec =
      None
        ( ./../types/io.objectbucket.v1alpha1.ObjectBucketClaimSpec.dhall
            kubernetes
        )
  , status =
      None
        ( ./../types/io.objectbucket.v1alpha1.ObjectBucketClaimStatus.dhall
            kubernetes
        )
  }
