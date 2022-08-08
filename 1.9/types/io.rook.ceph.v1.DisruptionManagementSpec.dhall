λ(kubernetes : ./../kubernetes.dhall) →
  { machineDisruptionBudgetNamespace : Optional Text
  , manageMachineDisruptionBudgets : Optional Bool
  , managePodBudgets : Optional Bool
  , osdMaintenanceTimeout : Optional Natural
  , pgHealthCheckTimeout : Optional Natural
  }
