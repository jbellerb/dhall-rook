λ(kubernetes : ./../kubernetes.dhall) →
  { details = None Text
  , lastChanged = None Text
  , lastChecked = None Text
  , mode = None Text
  , peers = None (List (./../types/io.rook.ceph.v1.PeersSpec.dhall kubernetes))
  , site_name = None Text
  }
