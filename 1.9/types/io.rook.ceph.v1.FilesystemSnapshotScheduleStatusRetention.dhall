λ(kubernetes : ./../kubernetes.dhall) →
  { active : Optional Bool
  , created : Optional Text
  , created_count : Optional Natural
  , first : Optional Text
  , last : Optional Text
  , last_pruned : Optional Text
  , pruned_count : Optional Natural
  , start : Optional Text
  }
