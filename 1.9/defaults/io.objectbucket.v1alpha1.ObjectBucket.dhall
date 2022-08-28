λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1alpha1"
  , kind = "ObjectBucket"
  , spec =
      None
        (./../types/io.objectbucket.v1alpha1.ObjectBucketSpec.dhall kubernetes)
  , status =
      None
        ( ./../types/io.objectbucket.v1alpha1.ObjectBucketStatus.dhall
            kubernetes
        )
  }
