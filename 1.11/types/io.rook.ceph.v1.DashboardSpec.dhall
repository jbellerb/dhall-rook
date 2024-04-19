λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , port : Optional Natural
  , ssl : Optional Bool
  , urlPrefix : Optional Text
  }
