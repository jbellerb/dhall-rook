λ(kubernetes : ./../kubernetes.dhall) →
  { bytesAvailable : Optional Natural
  , bytesTotal : Optional Natural
  , bytesUsed : Optional Natural
  , lastUpdated : Optional Text
  }
