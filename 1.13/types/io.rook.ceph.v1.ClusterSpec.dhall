λ(kubernetes : ./../kubernetes.dhall) →
  { annotations :
      Optional
        ( List
            { mapKey : Text
            , mapValue : List { mapKey : Text, mapValue : Text }
            }
        )
  , cephConfig :
      Optional
        ( List
            { mapKey : Text
            , mapValue : List { mapKey : Text, mapValue : Text }
            }
        )
  , cephVersion : Optional (./io.rook.ceph.v1.CephVersionSpec.dhall kubernetes)
  , cleanupPolicy :
      Optional (./io.rook.ceph.v1.CleanupPolicySpec.dhall kubernetes)
  , continueUpgradeAfterChecksEvenIfNotHealthy : Optional Bool
  , crashCollector :
      Optional (./io.rook.ceph.v1.CrashCollectorSpec.dhall kubernetes)
  , csi : Optional (./io.rook.ceph.v1.CSIDriverSpec.dhall kubernetes)
  , dashboard : Optional (./io.rook.ceph.v1.DashboardSpec.dhall kubernetes)
  , dataDirHostPath : Optional Text
  , disruptionManagement :
      Optional (./io.rook.ceph.v1.DisruptionManagementSpec.dhall kubernetes)
  , external : Optional (./io.rook.ceph.v1.ExternalSpec.dhall kubernetes)
  , healthCheck :
      Optional (./io.rook.ceph.v1.CephClusterHealthCheckSpec.dhall kubernetes)
  , labels :
      Optional
        ( List
            { mapKey : Text
            , mapValue : List { mapKey : Text, mapValue : Text }
            }
        )
  , logCollector :
      Optional (./io.rook.ceph.v1.LogCollectorSpec.dhall kubernetes)
  , mgr : Optional (./io.rook.ceph.v1.MgrSpec.dhall kubernetes)
  , mon : Optional (./io.rook.ceph.v1.MonSpec.dhall kubernetes)
  , monitoring : Optional (./io.rook.ceph.v1.MonitoringSpec.dhall kubernetes)
  , network : Optional (./io.rook.ceph.v1.NetworkSpec.dhall kubernetes)
  , placement :
      Optional
        ( List
            { mapKey : Text
            , mapValue : ./io.rook.ceph.v1.Placement.dhall kubernetes
            }
        )
  , priorityClassNames : Optional (List { mapKey : Text, mapValue : Text })
  , removeOSDsIfOutAndSafeToRemove : Optional Bool
  , resources :
      Optional
        (List { mapKey : Text, mapValue : kubernetes.ResourceRequirements })
  , security : Optional (./io.rook.ceph.v1.SecuritySpec.dhall kubernetes)
  , skipUpgradeChecks : Optional Bool
  , storage : Optional (./io.rook.ceph.v1.StorageScopeSpec.dhall kubernetes)
  , waitTimeoutForHealthyOSDInMinutes : Optional Natural
  }
