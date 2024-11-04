λ(kubernetes : ./../kubernetes.dhall) →
  { kerberos : Optional (./io.rook.ceph.v1.KerberosSpec.dhall kubernetes)
  , sssd : Optional (./io.rook.ceph.v1.SSSDSpec.dhall kubernetes)
  }
