λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.ModuleSettings.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.ModuleSettings.dhall kubernetes
  }
