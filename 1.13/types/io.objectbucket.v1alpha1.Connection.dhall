λ(kubernetes : ./../kubernetes.dhall) →
  { additionalState : List { mapKey : Text, mapValue : Text }
  , endpoint : ./io.objectbucket.v1alpha1.Endpoint.dhall kubernetes
  }
