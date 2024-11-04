λ(kubernetes : ./../kubernetes.dhall) →
  { machineDisruptionBudgetNamespace = None Text
  , manageMachineDisruptionBudgets = None Bool
  , managePodBudgets = None Bool
  , osdMaintenanceTimeout = None Natural
  , pgHealthCheckTimeout = None Natural
  , pgHealthyRegex = None Text
  }
