λ(kubernetes : ./../kubernetes.dhall) →
  { volumeSource = None kubernetes.VolumeSource }
