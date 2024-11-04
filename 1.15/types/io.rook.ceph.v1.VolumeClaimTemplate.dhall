λ(kubernetes : ./../kubernetes.dhall) →
  { metadata : kubernetes.ObjectMeta
  , spec : Optional kubernetes.PersistentVolumeClaimSpec
  }
