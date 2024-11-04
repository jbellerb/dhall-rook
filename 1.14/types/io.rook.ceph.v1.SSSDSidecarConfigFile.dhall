λ(kubernetes : ./../kubernetes.dhall) →
  { volumeSource :
      Optional (./io.rook.ceph.v1.ConfigFileVolumeSource.dhall kubernetes)
  }
