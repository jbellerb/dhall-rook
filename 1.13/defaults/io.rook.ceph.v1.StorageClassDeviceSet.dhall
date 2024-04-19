λ(kubernetes : ./../kubernetes.dhall) →
  { config = None (List { mapKey : Text, mapValue : Text })
  , encrypted = None Bool
  , placement = None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , portable = None Bool
  , preparePlacement =
      None (./../types/io.rook.ceph.v1.Placement.dhall kubernetes)
  , resources = None kubernetes.ResourceRequirements
  , schedulerName = None Text
  , tuneDeviceClass = None Bool
  , tuneFastDeviceClass = None Bool
  }
