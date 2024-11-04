λ(kubernetes : ./../kubernetes.dhall) →
  { apiVersion : Text
  , items : List (./io.rook.ceph.v1.CephCOSIDriver.dhall kubernetes)
  , kind : Text
  , metadata : kubernetes.ListMeta
  }
