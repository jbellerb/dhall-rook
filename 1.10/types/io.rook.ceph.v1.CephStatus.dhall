λ(kubernetes : ./../kubernetes.dhall) →
  { capacity : Optional (./io.rook.ceph.v1.Capacity.dhall kubernetes)
  , details :
      Optional
        ( List
            { mapKey : Text
            , mapValue : ./io.rook.ceph.v1.CephHealthMessage.dhall kubernetes
            }
        )
  , fsid : Optional Text
  , health : Optional Text
  , lastChanged : Optional Text
  , lastChecked : Optional Text
  , previousHealth : Optional Text
  , versions : Optional (./io.rook.ceph.v1.CephDaemonsVersions.dhall kubernetes)
  }
