λ(kubernetes : ./../kubernetes.dhall) →
  { config : Optional (List { mapKey : Text, mapValue : Text })
  , fullpath : Optional Text
  , name : Optional Text
  }
