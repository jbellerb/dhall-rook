λ(kubernetes : ./../kubernetes.dhall) →
  { daemon_health : Optional Text
  , health : Optional Text
  , image_health : Optional Text
  , states : Optional (./io.rook.ceph.v1.StatesSpec.dhall kubernetes)
  }
