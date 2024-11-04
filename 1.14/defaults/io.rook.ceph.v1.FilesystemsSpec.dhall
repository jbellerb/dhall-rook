λ(kubernetes : ./../kubernetes.dhall) →
  { directory_count = None Natural
  , filesystem_id = None Natural
  , name = None Text
  , peers =
      None
        ( List
            ( ./../types/io.rook.ceph.v1.FilesystemMirrorInfoPeerSpec.dhall
                kubernetes
            )
        )
  }
