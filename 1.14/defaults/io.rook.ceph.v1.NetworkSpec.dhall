λ(kubernetes : ./../kubernetes.dhall) →
  { addressRanges =
      None (./../types/io.rook.ceph.v1.AddressRangesSpec.dhall kubernetes)
  , connections =
      None (./../types/io.rook.ceph.v1.ConnectionsSpec.dhall kubernetes)
  , dualStack = None Bool
  , hostNetwork = None Bool
  , ipFamily = None Text
  , multiClusterService =
      None (./../types/io.rook.ceph.v1.MultiClusterServiceSpec.dhall kubernetes)
  , provider = None Text
  , selectors = None (List { mapKey : Text, mapValue : Text })
  }
