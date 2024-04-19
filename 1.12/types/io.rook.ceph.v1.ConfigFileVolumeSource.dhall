λ(kubernetes : ./../kubernetes.dhall) →
  { configMap : Optional kubernetes.ConfigMapVolumeSource
  , emptyDir : Optional kubernetes.EmptyDirVolumeSource
  , hostPath : Optional kubernetes.HostPathVolumeSource
  , persistentVolumeClaim :
      Optional kubernetes.PersistentVolumeClaimVolumeSource
  , projected : Optional kubernetes.ProjectedVolumeSource
  , secret : Optional kubernetes.SecretVolumeSource
  }
