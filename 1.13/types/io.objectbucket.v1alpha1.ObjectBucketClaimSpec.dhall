λ(kubernetes : ./../kubernetes.dhall) →
  { storageClassName : Text
  , additionalConfig : Optional (List { mapKey : Text, mapValue : Text })
  , bucketName : Optional Text
  , generateBucketName : Optional Text
  , objectBucketName : Optional Text
  }
