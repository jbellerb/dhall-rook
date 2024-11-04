λ(kubernetes : ./../kubernetes.dhall) →
  { dataPoolName : Text
  , metadataPoolName : Text
  , preserveRadosNamespaceDataOnDelete : Optional Bool
  }
