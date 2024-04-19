λ(kubernetes : ./../kubernetes.dhall) →
  { additionalConfig : List { mapKey : Text, mapValue : Text }
  , bucketHost : Text
  , bucketName : Text
  , bucketPort : Natural
  , region : Text
  , subRegion : Text
  }
