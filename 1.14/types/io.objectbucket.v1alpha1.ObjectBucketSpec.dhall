λ(kubernetes : ./../kubernetes.dhall) →
  { additionalState : List { mapKey : Text, mapValue : Text }
  , claimRef : kubernetes.ObjectReference
  , endpoint : ./io.objectbucket.v1alpha1.Endpoint.dhall kubernetes
  , reclaimPolicy : Text
  , storageClassName : Text
  }
