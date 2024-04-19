λ(kubernetes : ./../kubernetes.dhall) →
  { kerberos = None (./../types/io.rook.ceph.v1.KerberosSpec.dhall kubernetes)
  , sssd = None (./../types/io.rook.ceph.v1.SSSDSpec.dhall kubernetes)
  }
