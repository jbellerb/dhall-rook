λ(kubernetes : ./../kubernetes.dhall) →
  { info : Optional (List { mapKey : Text, mapValue : Text })
  , observedGeneration : Optional Natural
  , phase : Optional Text
  }
