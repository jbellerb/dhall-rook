λ(kubernetes : ./../kubernetes.dhall) →
  { cephfs-mirror : Optional (List { mapKey : Text, mapValue : Natural })
  , mds : Optional (List { mapKey : Text, mapValue : Natural })
  , mgr : Optional (List { mapKey : Text, mapValue : Natural })
  , mon : Optional (List { mapKey : Text, mapValue : Natural })
  , osd : Optional (List { mapKey : Text, mapValue : Natural })
  , overall : Optional (List { mapKey : Text, mapValue : Natural })
  , rbd-mirror : Optional (List { mapKey : Text, mapValue : Natural })
  , rgw : Optional (List { mapKey : Text, mapValue : Natural })
  }
