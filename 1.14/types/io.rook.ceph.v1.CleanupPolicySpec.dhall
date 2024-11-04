λ(kubernetes : ./../kubernetes.dhall) →
  { allowUninstallWithVolumes : Optional Bool
  , confirmation : Optional Text
  , sanitizeDisks :
      Optional (./io.rook.ceph.v1.SanitizeDisksSpec.dhall kubernetes)
  }
