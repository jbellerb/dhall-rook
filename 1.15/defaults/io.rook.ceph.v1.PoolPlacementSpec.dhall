λ(kubernetes : ./../kubernetes.dhall) →
  { dataNonECPoolName = None Text
  , storageClasses =
      None
        ( List
            ( ./../types/io.rook.ceph.v1.PlacementStorageClassSpec.dhall
                kubernetes
            )
        )
  }
