λ(kubernetes : ./../kubernetes.dhall) →
  { keystone = None (./../types/io.rook.ceph.v1.KeystoneSpec.dhall kubernetes) }
