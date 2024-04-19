λ(kubernetes : ./../kubernetes.dhall) →
  { daemon_health = None Text
  , health = None Text
  , image_health = None Text
  , states = None (./../types/io.rook.ceph.v1.StatesSpec.dhall kubernetes)
  }
