λ(kubernetes : ./../kubernetes.dhall) →
  { cephfs = None (./../types/io.rook.ceph.v1.CSICephFSSpec.dhall kubernetes)
  , readAffinity =
      None (./../types/io.rook.ceph.v1.ReadAffinitySpec.dhall kubernetes)
  }
