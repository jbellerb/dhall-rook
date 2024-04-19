λ(kubernetes : ./../kubernetes.dhall) →
  { subPath : Text
  , volumeSource : ./io.rook.ceph.v1.ConfigFileVolumeSource.dhall kubernetes
  }
