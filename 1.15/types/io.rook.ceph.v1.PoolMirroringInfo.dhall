λ(kubernetes : ./../kubernetes.dhall) →
  { mode : Optional Text
  , peers : Optional (List (./io.rook.ceph.v1.PeersSpec.dhall kubernetes))
  , site_name : Optional Text
  }
