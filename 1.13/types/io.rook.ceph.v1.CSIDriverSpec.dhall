λ(kubernetes : ./../kubernetes.dhall) →
  { cephfs : Optional (./io.rook.ceph.v1.CSICephFSSpec.dhall kubernetes)
  , readAffinity :
      Optional (./io.rook.ceph.v1.ReadAffinitySpec.dhall kubernetes)
  }
