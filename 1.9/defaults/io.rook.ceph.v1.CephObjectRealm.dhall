λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "ceph.rook.io/v1"
  , kind = "CephObjectRealm"
  , spec = None (./../types/io.rook.ceph.v1.ObjectRealmSpec.dhall kubernetes)
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
