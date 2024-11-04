λ(kubernetes : ./../kubernetes.dhall) →
  { Type = ./../types/io.rook.ceph.v1.CephBlockPoolList.dhall kubernetes
  , default = ./../defaults/io.rook.ceph.v1.CephBlockPoolList.dhall kubernetes
  }
