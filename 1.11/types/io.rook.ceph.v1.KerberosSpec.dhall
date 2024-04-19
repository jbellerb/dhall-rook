λ(kubernetes : ./../kubernetes.dhall) →
  { configFiles :
      Optional (./io.rook.ceph.v1.KerberosConfigFiles.dhall kubernetes)
  , domainName : Optional Text
  , keytabFile :
      Optional (./io.rook.ceph.v1.KerberosKeytabFile.dhall kubernetes)
  , principalName : Optional Text
  }
