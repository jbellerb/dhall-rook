λ(kubernetes : ./../kubernetes.dhall) →
  { connections : Optional (./io.rook.ceph.v1.ConnectionsSpec.dhall kubernetes)
  , dualStack : Optional Bool
  , hostNetwork : Optional Bool
  , ipFamily : Optional Text
  , multiClusterService :
      Optional (./io.rook.ceph.v1.MultiClusterServiceSpec.dhall kubernetes)
  , provider : Optional Text
  , selectors : Optional (List { mapKey : Text, mapValue : Text })
  }
