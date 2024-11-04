λ(kubernetes : ./../kubernetes.dhall) →
  { sidecar = None (./../types/io.rook.ceph.v1.SSSDSidecar.dhall kubernetes) }
