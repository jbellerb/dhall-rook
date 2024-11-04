λ(kubernetes : ./../kubernetes.dhall) →
  { connectionDetails = None (List { mapKey : Text, mapValue : Text })
  , tokenSecretName = None Text
  }
