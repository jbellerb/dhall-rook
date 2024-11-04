λ(kubernetes : ./../kubernetes.dhall) →
  { daemonHealth =
      None (./../types/io.rook.ceph.v1.DaemonHealthSpec.dhall kubernetes)
  , livenessProbe =
      None
        ( List
            { mapKey : Text
            , mapValue : ./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes
            }
        )
  , startupProbe =
      None
        ( List
            { mapKey : Text
            , mapValue : ./../types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes
            }
        )
  }
