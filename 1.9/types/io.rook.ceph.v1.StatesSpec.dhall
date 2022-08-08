λ(kubernetes : ./../kubernetes.dhall) →
  { error : Optional Integer
  , replaying : Optional Integer
  , starting_replay : Optional Integer
  , stopped : Optional Integer
  , stopping_replay : Optional Integer
  , syncing : Optional Integer
  , unknown : Optional Integer
  }
