λ(kubernetes : ./../kubernetes.dhall) →
  { capacity = None (./../types/io.rook.ceph.v1.Capacity.dhall kubernetes)
  , details =
      None
        ( List
            { mapKey : Text
            , mapValue :
                ./../types/io.rook.ceph.v1.CephHealthMessage.dhall kubernetes
            }
        )
  , fsid = None Text
  , health = None Text
  , lastChanged = None Text
  , lastChecked = None Text
  , previousHealth = None Text
  , versions =
      None (./../types/io.rook.ceph.v1.CephDaemonsVersions.dhall kubernetes)
  }
