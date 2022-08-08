λ(kubernetes : ./../kubernetes.dhall) →
  { details : Optional Text
  , lastChanged : Optional Text
  , lastChecked : Optional Text
  , mode : Optional Text
  , peers : Optional (List (./io.rook.ceph.v1.PeersSpec.dhall kubernetes))
  , site_name : Optional Text
  }
