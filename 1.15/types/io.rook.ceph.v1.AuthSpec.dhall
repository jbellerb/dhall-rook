λ(kubernetes : ./../kubernetes.dhall) →
  { keystone : Optional (./io.rook.ceph.v1.KeystoneSpec.dhall kubernetes) }
