λ(kubernetes : ./../kubernetes.dhall) →
  { daemonsStatus =
      None
        ( List
            ( ./../types/io.rook.ceph.v1.FilesystemMirroringInfo.dhall
                kubernetes
            )
        )
  , details = None Text
  , lastChanged = None Text
  , lastChecked = None Text
  }
