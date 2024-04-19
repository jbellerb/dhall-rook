λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , items : List (./io.rook.ceph.v1.CephNFS.dhall kubernetes)
  , kind : Text
  , metadata : kubernetes.ListMeta
  }
