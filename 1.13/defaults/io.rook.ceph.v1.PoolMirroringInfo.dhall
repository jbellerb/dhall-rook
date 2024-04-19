λ(kubernetes : ./../kubernetes.dhall) →
  { mode = None Text
  , peers = None (List (./../types/io.rook.ceph.v1.PeersSpec.dhall kubernetes))
  , site_name = None Text
  }
