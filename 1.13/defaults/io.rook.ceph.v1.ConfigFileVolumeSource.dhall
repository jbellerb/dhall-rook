λ(kubernetes : ./../kubernetes.dhall) →
  { configMap = None kubernetes.ConfigMapVolumeSource
  , emptyDir = None kubernetes.EmptyDirVolumeSource
  , hostPath = None kubernetes.HostPathVolumeSource
  , persistentVolumeClaim = None kubernetes.PersistentVolumeClaimVolumeSource
  , projected = None kubernetes.ProjectedVolumeSource
  , secret = None kubernetes.SecretVolumeSource
  }
