λ(kubernetes : ./../kubernetes.dhall) →
  { acceptedRoles : List Text
  , serviceUserSecretName : Text
  , url : Text
  , implicitTenants : Optional Text
  , revocationInterval : Optional Natural
  , tokenCacheSize : Optional Natural
  }
