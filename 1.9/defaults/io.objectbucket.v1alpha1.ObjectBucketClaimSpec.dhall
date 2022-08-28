λ(kubernetes : ./../kubernetes.dhall) →
  { additionalConfig = None (List { mapKey : Text, mapValue : Text })
  , bucketName = None Text
  , generateBucketName = None Text
  , objectBucketName = None Text
  }
