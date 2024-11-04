λ(kubernetes : ./../kubernetes.dhall) →
  { allowUnsupported : Optional Bool
  , image : Optional Text
  , imagePullPolicy : Optional Text
  }
