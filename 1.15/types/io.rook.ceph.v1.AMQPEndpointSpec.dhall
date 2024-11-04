λ(kubernetes : ./../kubernetes.dhall) →
  { exchange : Text
  , uri : Text
  , ackLevel : Optional Text
  , disableVerifySSL : Optional Bool
  }
