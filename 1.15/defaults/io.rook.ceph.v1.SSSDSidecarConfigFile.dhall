λ(kubernetes : ./../kubernetes.dhall) →
  { volumeSource =
      None (./../types/io.rook.ceph.v1.ConfigFileVolumeSource.dhall kubernetes)
  }
