λ(kubernetes : ./../kubernetes.dhall) →
  { daemonsStatus :
      Optional
        (List (./io.rook.ceph.v1.FilesystemMirroringInfo.dhall kubernetes))
  , details : Optional Text
  , lastChanged : Optional Text
  , lastChecked : Optional Text
  }
