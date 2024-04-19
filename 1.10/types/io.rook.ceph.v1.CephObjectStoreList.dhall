λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , items : List (./io.rook.ceph.v1.CephObjectStore.dhall kubernetes)
  , kind : Text
  , metadata : kubernetes.ListMeta
  }
