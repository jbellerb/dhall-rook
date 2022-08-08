λ(kubernetes : ./../kubernetes.dhall) →
  { connections =
      None (./../types/io.rook.ceph.v1.ConnectionsSpec.dhall kubernetes)
  , dualStack = None Bool
  , hostNetwork = None Bool
  , ipFamily = None Text
  , provider = None Text
  , selectors = None (List { mapKey : Text, mapValue : Text })
  }
