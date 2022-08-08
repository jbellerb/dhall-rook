λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes
  }
