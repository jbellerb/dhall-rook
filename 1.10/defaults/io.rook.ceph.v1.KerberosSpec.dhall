λ(kubernetes : ./../kubernetes.dhall) →
  { configFiles =
      None (./../types/io.rook.ceph.v1.KerberosConfigFiles.dhall kubernetes)
  , keytabFile =
      None (./../types/io.rook.ceph.v1.KerberosKeytabFile.dhall kubernetes)
  , principalName = None Text
  }
