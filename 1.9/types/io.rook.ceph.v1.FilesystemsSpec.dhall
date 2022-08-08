λ(kubernetes : ./../kubernetes.dhall) →
  { directory_count : Optional Natural
  , filesystem_id : Optional Natural
  , name : Optional Text
  , peers :
      Optional
        (List (./io.rook.ceph.v1.FilesystemMirrorInfoPeerSpec.dhall kubernetes))
  }
