λ(kubernetes : ./../kubernetes.dhall) →
  { remote = None (./../types/io.rook.ceph.v1.PeerRemoteSpec.dhall kubernetes)
  , stats = None (./../types/io.rook.ceph.v1.PeerStatSpec.dhall kubernetes)
  , uuid = None Text
  }
