λ(kubernetes : ./../kubernetes.dhall) →
  { uri : Text
  , disableVerifySSL : Optional Bool
  , sendCloudEvents : Optional Bool
  }
