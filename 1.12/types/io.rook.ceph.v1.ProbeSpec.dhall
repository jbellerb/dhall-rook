λ(kubernetes : ./../kubernetes.dhall) →
  { disabled : Optional Bool, probe : Optional kubernetes.Probe }
