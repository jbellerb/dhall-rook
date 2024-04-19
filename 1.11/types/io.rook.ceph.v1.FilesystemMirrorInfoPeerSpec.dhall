λ(kubernetes : ./../kubernetes.dhall) →
  { remote : Optional (./io.rook.ceph.v1.PeerRemoteSpec.dhall kubernetes)
  , stats : Optional (./io.rook.ceph.v1.PeerStatSpec.dhall kubernetes)
  , uuid : Optional Text
  }
