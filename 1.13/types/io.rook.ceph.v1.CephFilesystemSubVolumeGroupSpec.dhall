λ(kubernetes : ./../kubernetes.dhall) →
  { filesystemName : Text
  , name : Optional Text
  , pinning :
      Optional
        ( ./io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpecPinning.dhall
            kubernetes
        )
  }
