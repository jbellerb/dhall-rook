λ(kubernetes : ./../kubernetes.dhall) →
  { enabled = None Bool
  , name = None Text
  , settings = None (./../types/io.rook.ceph.v1.ModuleSettings.dhall kubernetes)
  }
