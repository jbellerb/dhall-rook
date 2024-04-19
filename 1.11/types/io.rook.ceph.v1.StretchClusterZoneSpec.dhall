λ(kubernetes : ./../kubernetes.dhall) →
  { arbiter : Optional Bool
  , name : Optional Text
  , volumeClaimTemplate : Optional kubernetes.PersistentVolumeClaim
  }
