λ(kubernetes : ./../kubernetes.dhall) →
  { cephfs-mirror = None (List { mapKey : Text, mapValue : Natural })
  , mds = None (List { mapKey : Text, mapValue : Natural })
  , mgr = None (List { mapKey : Text, mapValue : Natural })
  , mon = None (List { mapKey : Text, mapValue : Natural })
  , osd = None (List { mapKey : Text, mapValue : Natural })
  , overall = None (List { mapKey : Text, mapValue : Natural })
  , rbd-mirror = None (List { mapKey : Text, mapValue : Natural })
  , rgw = None (List { mapKey : Text, mapValue : Natural })
  }
