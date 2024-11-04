λ(kubernetes : ./../kubernetes.dhall) →
  { connectionDetails : Optional (List { mapKey : Text, mapValue : Text })
  , tokenSecretName : Optional Text
  }
