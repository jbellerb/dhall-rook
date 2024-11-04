λ(kubernetes : ./../kubernetes.dhall) →
  { enabled : Optional Bool
  , name : Optional Text
  , settings : Optional (./io.rook.ceph.v1.ModuleSettings.dhall kubernetes)
  }
