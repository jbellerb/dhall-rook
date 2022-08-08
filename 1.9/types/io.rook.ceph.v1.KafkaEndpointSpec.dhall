λ(kubernetes : ./../kubernetes.dhall) →
  { uri : Text
  , ackLevel : Optional Text
  , disableVerifySSL : Optional Bool
  , useSSL : Optional Bool
  }
