λ(kubernetes : ./../kubernetes.dhall) →
  { allowUninstallWithVolumes = None Bool
  , confirmation = None Text
  , sanitizeDisks =
      None (./../types/io.rook.ceph.v1.SanitizeDisksSpec.dhall kubernetes)
  }
