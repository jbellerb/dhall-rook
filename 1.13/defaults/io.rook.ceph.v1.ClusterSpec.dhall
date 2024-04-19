λ(kubernetes : ./../kubernetes.dhall) →
  { annotations =
      None
        ( List
            { mapKey : Text
            , mapValue : List { mapKey : Text, mapValue : Text }
            }
        )
  , cephConfig =
      None
        ( List
            { mapKey : Text
            , mapValue : List { mapKey : Text, mapValue : Text }
            }
        )
  , cephVersion =
      None (./../types/io.rook.ceph.v1.CephVersionSpec.dhall kubernetes)
  , cleanupPolicy =
      None (./../types/io.rook.ceph.v1.CleanupPolicySpec.dhall kubernetes)
  , continueUpgradeAfterChecksEvenIfNotHealthy = None Bool
  , crashCollector =
      None (./../types/io.rook.ceph.v1.CrashCollectorSpec.dhall kubernetes)
  , csi = None (./../types/io.rook.ceph.v1.CSIDriverSpec.dhall kubernetes)
  , dashboard = None (./../types/io.rook.ceph.v1.DashboardSpec.dhall kubernetes)
  , dataDirHostPath = None Text
  , disruptionManagement =
      None
        (./../types/io.rook.ceph.v1.DisruptionManagementSpec.dhall kubernetes)
  , external = None (./../types/io.rook.ceph.v1.ExternalSpec.dhall kubernetes)
  , healthCheck =
      None
        (./../types/io.rook.ceph.v1.CephClusterHealthCheckSpec.dhall kubernetes)
  , labels =
      None
        ( List
            { mapKey : Text
            , mapValue : List { mapKey : Text, mapValue : Text }
            }
        )
  , logCollector =
      None (./../types/io.rook.ceph.v1.LogCollectorSpec.dhall kubernetes)
  , mgr = None (./../types/io.rook.ceph.v1.MgrSpec.dhall kubernetes)
  , mon = None (./../types/io.rook.ceph.v1.MonSpec.dhall kubernetes)
  , monitoring =
      None (./../types/io.rook.ceph.v1.MonitoringSpec.dhall kubernetes)
  , network = None (./../types/io.rook.ceph.v1.NetworkSpec.dhall kubernetes)
  , placement =
      None
        ( List
            { mapKey : Text
            , mapValue : ./../types/io.rook.ceph.v1.Placement.dhall kubernetes
            }
        )
  , priorityClassNames = None (List { mapKey : Text, mapValue : Text })
  , removeOSDsIfOutAndSafeToRemove = None Bool
  , resources =
      None (List { mapKey : Text, mapValue : kubernetes.ResourceRequirements })
  , security = None (./../types/io.rook.ceph.v1.SecuritySpec.dhall kubernetes)
  , skipUpgradeChecks = None Bool
  , storage =
      None (./../types/io.rook.ceph.v1.StorageScopeSpec.dhall kubernetes)
  , waitTimeoutForHealthyOSDInMinutes = None Natural
  }
