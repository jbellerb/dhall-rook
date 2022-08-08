λ(kubernetes : ./../kubernetes.dhall) →
  { daemonHealth :
      Optional (./io.rook.ceph.v1.DaemonHealthSpec.dhall kubernetes)
  , livenessProbe :
      Optional
        ( List
            { mapKey : Text
            , mapValue : ./io.rook.ceph.v1.ProbeSpec.dhall kubernetes
            }
        )
  , startupProbe :
      Optional
        ( List
            { mapKey : Text
            , mapValue : ./io.rook.ceph.v1.ProbeSpec.dhall kubernetes
            }
        )
  }
