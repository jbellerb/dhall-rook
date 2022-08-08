λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion = "v1"
  , kind = "CephObjectRealm"
  , spec = None (./../types/io.rook.ceph.v1.ObjectRealmSpec.dhall kubernetes)
  , status = None (./../types/io.rook.ceph.v1.Status.dhall kubernetes)
  }
