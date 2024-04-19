λ(kubernetes : ./../kubernetes.dhall) →
  { arbiter = None Bool
  , name = None Text
  , volumeClaimTemplate = None kubernetes.PersistentVolumeClaim
  }
