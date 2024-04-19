λ(kubernetes : ./kubernetes.dhall) →
  { Connection = ./schemas/io.objectbucket.v1alpha1.Connection.dhall kubernetes
  , Endpoint = ./schemas/io.objectbucket.v1alpha1.Endpoint.dhall kubernetes
  , ObjectBucket =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucket.dhall kubernetes
  , ObjectBucketClaim =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketClaim.dhall kubernetes
  , ObjectBucketClaimList =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketClaimList.dhall kubernetes
  , ObjectBucketClaimSpec =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketClaimSpec.dhall kubernetes
  , ObjectBucketClaimStatus =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketClaimStatus.dhall
        kubernetes
  , ObjectBucketList =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketList.dhall kubernetes
  , ObjectBucketSpec =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketSpec.dhall kubernetes
  , ObjectBucketStatus =
      ./schemas/io.objectbucket.v1alpha1.ObjectBucketStatus.dhall kubernetes
  , AMQPEndpointSpec =
      ./schemas/io.rook.ceph.v1.AMQPEndpointSpec.dhall kubernetes
  , AddressRangesSpec =
      ./schemas/io.rook.ceph.v1.AddressRangesSpec.dhall kubernetes
  , BucketNotificationSpec =
      ./schemas/io.rook.ceph.v1.BucketNotificationSpec.dhall kubernetes
  , BucketTopicSpec = ./schemas/io.rook.ceph.v1.BucketTopicSpec.dhall kubernetes
  , BucketTopicStatus =
      ./schemas/io.rook.ceph.v1.BucketTopicStatus.dhall kubernetes
  , Capacity = ./schemas/io.rook.ceph.v1.Capacity.dhall kubernetes
  , CephBlockPool = ./schemas/io.rook.ceph.v1.CephBlockPool.dhall kubernetes
  , CephBlockPoolList =
      ./schemas/io.rook.ceph.v1.CephBlockPoolList.dhall kubernetes
  , CephBlockPoolRadosNamespace =
      ./schemas/io.rook.ceph.v1.CephBlockPoolRadosNamespace.dhall kubernetes
  , CephBlockPoolRadosNamespaceList =
      ./schemas/io.rook.ceph.v1.CephBlockPoolRadosNamespaceList.dhall kubernetes
  , CephBlockPoolRadosNamespaceSpec =
      ./schemas/io.rook.ceph.v1.CephBlockPoolRadosNamespaceSpec.dhall kubernetes
  , CephBlockPoolRadosNamespaceStatus =
      ./schemas/io.rook.ceph.v1.CephBlockPoolRadosNamespaceStatus.dhall
        kubernetes
  , CephBlockPoolStatus =
      ./schemas/io.rook.ceph.v1.CephBlockPoolStatus.dhall kubernetes
  , CephBucketNotification =
      ./schemas/io.rook.ceph.v1.CephBucketNotification.dhall kubernetes
  , CephBucketNotificationList =
      ./schemas/io.rook.ceph.v1.CephBucketNotificationList.dhall kubernetes
  , CephBucketTopic = ./schemas/io.rook.ceph.v1.CephBucketTopic.dhall kubernetes
  , CephBucketTopicList =
      ./schemas/io.rook.ceph.v1.CephBucketTopicList.dhall kubernetes
  , CephCOSIDriver = ./schemas/io.rook.ceph.v1.CephCOSIDriver.dhall kubernetes
  , CephCOSIDriverList =
      ./schemas/io.rook.ceph.v1.CephCOSIDriverList.dhall kubernetes
  , CephCOSIDriverSpec =
      ./schemas/io.rook.ceph.v1.CephCOSIDriverSpec.dhall kubernetes
  , CephClient = ./schemas/io.rook.ceph.v1.CephClient.dhall kubernetes
  , CephClientList = ./schemas/io.rook.ceph.v1.CephClientList.dhall kubernetes
  , CephClientStatus =
      ./schemas/io.rook.ceph.v1.CephClientStatus.dhall kubernetes
  , CephCluster = ./schemas/io.rook.ceph.v1.CephCluster.dhall kubernetes
  , CephClusterHealthCheckSpec =
      ./schemas/io.rook.ceph.v1.CephClusterHealthCheckSpec.dhall kubernetes
  , CephClusterList = ./schemas/io.rook.ceph.v1.CephClusterList.dhall kubernetes
  , CephDaemonsVersions =
      ./schemas/io.rook.ceph.v1.CephDaemonsVersions.dhall kubernetes
  , CephFilesystem = ./schemas/io.rook.ceph.v1.CephFilesystem.dhall kubernetes
  , CephFilesystemList =
      ./schemas/io.rook.ceph.v1.CephFilesystemList.dhall kubernetes
  , CephFilesystemMirror =
      ./schemas/io.rook.ceph.v1.CephFilesystemMirror.dhall kubernetes
  , CephFilesystemMirrorList =
      ./schemas/io.rook.ceph.v1.CephFilesystemMirrorList.dhall kubernetes
  , CephFilesystemStatus =
      ./schemas/io.rook.ceph.v1.CephFilesystemStatus.dhall kubernetes
  , CephFilesystemSubVolumeGroup =
      ./schemas/io.rook.ceph.v1.CephFilesystemSubVolumeGroup.dhall kubernetes
  , CephFilesystemSubVolumeGroupList =
      ./schemas/io.rook.ceph.v1.CephFilesystemSubVolumeGroupList.dhall
        kubernetes
  , CephFilesystemSubVolumeGroupSpec =
      ./schemas/io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpec.dhall
        kubernetes
  , CephFilesystemSubVolumeGroupStatus =
      ./schemas/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
        kubernetes
  , CephHealthMessage =
      ./schemas/io.rook.ceph.v1.CephHealthMessage.dhall kubernetes
  , CephNFS = ./schemas/io.rook.ceph.v1.CephNFS.dhall kubernetes
  , CephNFSList = ./schemas/io.rook.ceph.v1.CephNFSList.dhall kubernetes
  , CephObjectRealm = ./schemas/io.rook.ceph.v1.CephObjectRealm.dhall kubernetes
  , CephObjectRealmList =
      ./schemas/io.rook.ceph.v1.CephObjectRealmList.dhall kubernetes
  , CephObjectStore = ./schemas/io.rook.ceph.v1.CephObjectStore.dhall kubernetes
  , CephObjectStoreList =
      ./schemas/io.rook.ceph.v1.CephObjectStoreList.dhall kubernetes
  , CephObjectStoreUser =
      ./schemas/io.rook.ceph.v1.CephObjectStoreUser.dhall kubernetes
  , CephObjectStoreUserList =
      ./schemas/io.rook.ceph.v1.CephObjectStoreUserList.dhall kubernetes
  , CephObjectZone = ./schemas/io.rook.ceph.v1.CephObjectZone.dhall kubernetes
  , CephObjectZoneGroup =
      ./schemas/io.rook.ceph.v1.CephObjectZoneGroup.dhall kubernetes
  , CephObjectZoneGroupList =
      ./schemas/io.rook.ceph.v1.CephObjectZoneGroupList.dhall kubernetes
  , CephObjectZoneList =
      ./schemas/io.rook.ceph.v1.CephObjectZoneList.dhall kubernetes
  , CephRBDMirror = ./schemas/io.rook.ceph.v1.CephRBDMirror.dhall kubernetes
  , CephRBDMirrorList =
      ./schemas/io.rook.ceph.v1.CephRBDMirrorList.dhall kubernetes
  , CephStatus = ./schemas/io.rook.ceph.v1.CephStatus.dhall kubernetes
  , CephStorage = ./schemas/io.rook.ceph.v1.CephStorage.dhall kubernetes
  , CephVersionSpec = ./schemas/io.rook.ceph.v1.CephVersionSpec.dhall kubernetes
  , CleanupPolicySpec =
      ./schemas/io.rook.ceph.v1.CleanupPolicySpec.dhall kubernetes
  , ClientSpec = ./schemas/io.rook.ceph.v1.ClientSpec.dhall kubernetes
  , ClusterSpec = ./schemas/io.rook.ceph.v1.ClusterSpec.dhall kubernetes
  , ClusterStatus = ./schemas/io.rook.ceph.v1.ClusterStatus.dhall kubernetes
  , ClusterVersion = ./schemas/io.rook.ceph.v1.ClusterVersion.dhall kubernetes
  , CompressionSpec = ./schemas/io.rook.ceph.v1.CompressionSpec.dhall kubernetes
  , Condition = ./schemas/io.rook.ceph.v1.Condition.dhall kubernetes
  , ConfigFileVolumeSource =
      ./schemas/io.rook.ceph.v1.ConfigFileVolumeSource.dhall kubernetes
  , ConnectionsSpec = ./schemas/io.rook.ceph.v1.ConnectionsSpec.dhall kubernetes
  , CrashCollectorSpec =
      ./schemas/io.rook.ceph.v1.CrashCollectorSpec.dhall kubernetes
  , DaemonHealthSpec =
      ./schemas/io.rook.ceph.v1.DaemonHealthSpec.dhall kubernetes
  , DashboardSpec = ./schemas/io.rook.ceph.v1.DashboardSpec.dhall kubernetes
  , Device = ./schemas/io.rook.ceph.v1.Device.dhall kubernetes
  , DeviceClasses = ./schemas/io.rook.ceph.v1.DeviceClasses.dhall kubernetes
  , DisruptionManagementSpec =
      ./schemas/io.rook.ceph.v1.DisruptionManagementSpec.dhall kubernetes
  , EncryptionSpec = ./schemas/io.rook.ceph.v1.EncryptionSpec.dhall kubernetes
  , ErasureCodedSpec =
      ./schemas/io.rook.ceph.v1.ErasureCodedSpec.dhall kubernetes
  , ExternalSpec = ./schemas/io.rook.ceph.v1.ExternalSpec.dhall kubernetes
  , FSMirroringSpec = ./schemas/io.rook.ceph.v1.FSMirroringSpec.dhall kubernetes
  , FilesystemMirrorInfoPeerSpec =
      ./schemas/io.rook.ceph.v1.FilesystemMirrorInfoPeerSpec.dhall kubernetes
  , FilesystemMirroringInfo =
      ./schemas/io.rook.ceph.v1.FilesystemMirroringInfo.dhall kubernetes
  , FilesystemMirroringInfoSpec =
      ./schemas/io.rook.ceph.v1.FilesystemMirroringInfoSpec.dhall kubernetes
  , FilesystemMirroringSpec =
      ./schemas/io.rook.ceph.v1.FilesystemMirroringSpec.dhall kubernetes
  , FilesystemSnapshotScheduleStatusRetention =
      ./schemas/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusRetention.dhall
        kubernetes
  , FilesystemSnapshotScheduleStatusSpec =
      ./schemas/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusSpec.dhall
        kubernetes
  , FilesystemSnapshotSchedulesSpec =
      ./schemas/io.rook.ceph.v1.FilesystemSnapshotSchedulesSpec.dhall kubernetes
  , FilesystemSpec = ./schemas/io.rook.ceph.v1.FilesystemSpec.dhall kubernetes
  , FilesystemsSpec = ./schemas/io.rook.ceph.v1.FilesystemsSpec.dhall kubernetes
  , GaneshaRADOSSpec =
      ./schemas/io.rook.ceph.v1.GaneshaRADOSSpec.dhall kubernetes
  , GaneshaServerSpec =
      ./schemas/io.rook.ceph.v1.GaneshaServerSpec.dhall kubernetes
  , GatewaySpec = ./schemas/io.rook.ceph.v1.GatewaySpec.dhall kubernetes
  , HTTPEndpointSpec =
      ./schemas/io.rook.ceph.v1.HTTPEndpointSpec.dhall kubernetes
  , HealthCheckSpec = ./schemas/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes
  , HybridStorageSpec =
      ./schemas/io.rook.ceph.v1.HybridStorageSpec.dhall kubernetes
  , KafkaEndpointSpec =
      ./schemas/io.rook.ceph.v1.KafkaEndpointSpec.dhall kubernetes
  , KerberosConfigFiles =
      ./schemas/io.rook.ceph.v1.KerberosConfigFiles.dhall kubernetes
  , KerberosKeytabFile =
      ./schemas/io.rook.ceph.v1.KerberosKeytabFile.dhall kubernetes
  , KerberosSpec = ./schemas/io.rook.ceph.v1.KerberosSpec.dhall kubernetes
  , KeyManagementServiceSpec =
      ./schemas/io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes
  , KeyRotationSpec = ./schemas/io.rook.ceph.v1.KeyRotationSpec.dhall kubernetes
  , LogCollectorSpec =
      ./schemas/io.rook.ceph.v1.LogCollectorSpec.dhall kubernetes
  , MetadataServerSpec =
      ./schemas/io.rook.ceph.v1.MetadataServerSpec.dhall kubernetes
  , MgrSpec = ./schemas/io.rook.ceph.v1.MgrSpec.dhall kubernetes
  , MirrorHealthCheckSpec =
      ./schemas/io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes
  , MirroringInfoSpec =
      ./schemas/io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes
  , MirroringPeerSpec =
      ./schemas/io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes
  , MirroringSpec = ./schemas/io.rook.ceph.v1.MirroringSpec.dhall kubernetes
  , MirroringStatusSpec =
      ./schemas/io.rook.ceph.v1.MirroringStatusSpec.dhall kubernetes
  , Module = ./schemas/io.rook.ceph.v1.Module.dhall kubernetes
  , MonSpec = ./schemas/io.rook.ceph.v1.MonSpec.dhall kubernetes
  , MonZoneSpec = ./schemas/io.rook.ceph.v1.MonZoneSpec.dhall kubernetes
  , MonitoringSpec = ./schemas/io.rook.ceph.v1.MonitoringSpec.dhall kubernetes
  , MultiClusterServiceSpec =
      ./schemas/io.rook.ceph.v1.MultiClusterServiceSpec.dhall kubernetes
  , NFSGaneshaSpec = ./schemas/io.rook.ceph.v1.NFSGaneshaSpec.dhall kubernetes
  , NFSSecuritySpec = ./schemas/io.rook.ceph.v1.NFSSecuritySpec.dhall kubernetes
  , NamedBlockPoolSpec =
      ./schemas/io.rook.ceph.v1.NamedBlockPoolSpec.dhall kubernetes
  , NamedPoolSpec = ./schemas/io.rook.ceph.v1.NamedPoolSpec.dhall kubernetes
  , NetworkSpec = ./schemas/io.rook.ceph.v1.NetworkSpec.dhall kubernetes
  , Node = ./schemas/io.rook.ceph.v1.Node.dhall kubernetes
  , NotificationFilterRule =
      ./schemas/io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes
  , NotificationFilterSpec =
      ./schemas/io.rook.ceph.v1.NotificationFilterSpec.dhall kubernetes
  , NotificationKeyFilterRule =
      ./schemas/io.rook.ceph.v1.NotificationKeyFilterRule.dhall kubernetes
  , OSDStatus = ./schemas/io.rook.ceph.v1.OSDStatus.dhall kubernetes
  , OSDStore = ./schemas/io.rook.ceph.v1.OSDStore.dhall kubernetes
  , ObjectEndpoints = ./schemas/io.rook.ceph.v1.ObjectEndpoints.dhall kubernetes
  , ObjectHealthCheckSpec =
      ./schemas/io.rook.ceph.v1.ObjectHealthCheckSpec.dhall kubernetes
  , ObjectRealmSpec = ./schemas/io.rook.ceph.v1.ObjectRealmSpec.dhall kubernetes
  , ObjectStoreSecuritySpec =
      ./schemas/io.rook.ceph.v1.ObjectStoreSecuritySpec.dhall kubernetes
  , ObjectStoreSpec = ./schemas/io.rook.ceph.v1.ObjectStoreSpec.dhall kubernetes
  , ObjectStoreStatus =
      ./schemas/io.rook.ceph.v1.ObjectStoreStatus.dhall kubernetes
  , ObjectStoreUserSpec =
      ./schemas/io.rook.ceph.v1.ObjectStoreUserSpec.dhall kubernetes
  , ObjectStoreUserStatus =
      ./schemas/io.rook.ceph.v1.ObjectStoreUserStatus.dhall kubernetes
  , ObjectUserCapSpec =
      ./schemas/io.rook.ceph.v1.ObjectUserCapSpec.dhall kubernetes
  , ObjectUserQuotaSpec =
      ./schemas/io.rook.ceph.v1.ObjectUserQuotaSpec.dhall kubernetes
  , ObjectZoneGroupSpec =
      ./schemas/io.rook.ceph.v1.ObjectZoneGroupSpec.dhall kubernetes
  , ObjectZoneSpec = ./schemas/io.rook.ceph.v1.ObjectZoneSpec.dhall kubernetes
  , PeerRemoteSpec = ./schemas/io.rook.ceph.v1.PeerRemoteSpec.dhall kubernetes
  , PeerStatSpec = ./schemas/io.rook.ceph.v1.PeerStatSpec.dhall kubernetes
  , PeersSpec = ./schemas/io.rook.ceph.v1.PeersSpec.dhall kubernetes
  , Placement = ./schemas/io.rook.ceph.v1.Placement.dhall kubernetes
  , PoolMirroringInfo =
      ./schemas/io.rook.ceph.v1.PoolMirroringInfo.dhall kubernetes
  , PoolMirroringStatus =
      ./schemas/io.rook.ceph.v1.PoolMirroringStatus.dhall kubernetes
  , PoolMirroringStatusSummarySpec =
      ./schemas/io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall kubernetes
  , PoolSpec = ./schemas/io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , ProbeSpec = ./schemas/io.rook.ceph.v1.ProbeSpec.dhall kubernetes
  , PullSpec = ./schemas/io.rook.ceph.v1.PullSpec.dhall kubernetes
  , QuotaSpec = ./schemas/io.rook.ceph.v1.QuotaSpec.dhall kubernetes
  , RBDMirroringSpec =
      ./schemas/io.rook.ceph.v1.RBDMirroringSpec.dhall kubernetes
  , RGWServiceSpec = ./schemas/io.rook.ceph.v1.RGWServiceSpec.dhall kubernetes
  , ReplicatedSpec = ./schemas/io.rook.ceph.v1.ReplicatedSpec.dhall kubernetes
  , SSSDSidecar = ./schemas/io.rook.ceph.v1.SSSDSidecar.dhall kubernetes
  , SSSDSidecarAdditionalFile =
      ./schemas/io.rook.ceph.v1.SSSDSidecarAdditionalFile.dhall kubernetes
  , SSSDSidecarConfigFile =
      ./schemas/io.rook.ceph.v1.SSSDSidecarConfigFile.dhall kubernetes
  , SSSDSpec = ./schemas/io.rook.ceph.v1.SSSDSpec.dhall kubernetes
  , SanitizeDisksSpec =
      ./schemas/io.rook.ceph.v1.SanitizeDisksSpec.dhall kubernetes
  , SecuritySpec = ./schemas/io.rook.ceph.v1.SecuritySpec.dhall kubernetes
  , Selection = ./schemas/io.rook.ceph.v1.Selection.dhall kubernetes
  , SnapshotSchedule =
      ./schemas/io.rook.ceph.v1.SnapshotSchedule.dhall kubernetes
  , SnapshotScheduleRetentionSpec =
      ./schemas/io.rook.ceph.v1.SnapshotScheduleRetentionSpec.dhall kubernetes
  , SnapshotScheduleSpec =
      ./schemas/io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes
  , SnapshotScheduleStatusSpec =
      ./schemas/io.rook.ceph.v1.SnapshotScheduleStatusSpec.dhall kubernetes
  , SnapshotSchedulesSpec =
      ./schemas/io.rook.ceph.v1.SnapshotSchedulesSpec.dhall kubernetes
  , StatesSpec = ./schemas/io.rook.ceph.v1.StatesSpec.dhall kubernetes
  , Status = ./schemas/io.rook.ceph.v1.Status.dhall kubernetes
  , StorageClassDeviceSet =
      ./schemas/io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes
  , StorageScopeSpec =
      ./schemas/io.rook.ceph.v1.StorageScopeSpec.dhall kubernetes
  , StretchClusterSpec =
      ./schemas/io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes
  , TopicEndpointSpec =
      ./schemas/io.rook.ceph.v1.TopicEndpointSpec.dhall kubernetes
  , ZoneSpec = ./schemas/io.rook.ceph.v1.ZoneSpec.dhall kubernetes
  }
