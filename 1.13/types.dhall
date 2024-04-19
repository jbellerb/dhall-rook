λ(kubernetes : ./kubernetes.dhall) →
  { Connection = ./types/io.objectbucket.v1alpha1.Connection.dhall kubernetes
  , Endpoint = ./types/io.objectbucket.v1alpha1.Endpoint.dhall kubernetes
  , ObjectBucket =
      ./types/io.objectbucket.v1alpha1.ObjectBucket.dhall kubernetes
  , ObjectBucketClaim =
      ./types/io.objectbucket.v1alpha1.ObjectBucketClaim.dhall kubernetes
  , ObjectBucketClaimList =
      ./types/io.objectbucket.v1alpha1.ObjectBucketClaimList.dhall kubernetes
  , ObjectBucketClaimSpec =
      ./types/io.objectbucket.v1alpha1.ObjectBucketClaimSpec.dhall kubernetes
  , ObjectBucketClaimStatus =
      ./types/io.objectbucket.v1alpha1.ObjectBucketClaimStatus.dhall kubernetes
  , ObjectBucketList =
      ./types/io.objectbucket.v1alpha1.ObjectBucketList.dhall kubernetes
  , ObjectBucketSpec =
      ./types/io.objectbucket.v1alpha1.ObjectBucketSpec.dhall kubernetes
  , ObjectBucketStatus =
      ./types/io.objectbucket.v1alpha1.ObjectBucketStatus.dhall kubernetes
  , AMQPEndpointSpec = ./types/io.rook.ceph.v1.AMQPEndpointSpec.dhall kubernetes
  , AddressRangesSpec =
      ./types/io.rook.ceph.v1.AddressRangesSpec.dhall kubernetes
  , BucketNotificationSpec =
      ./types/io.rook.ceph.v1.BucketNotificationSpec.dhall kubernetes
  , BucketTopicSpec = ./types/io.rook.ceph.v1.BucketTopicSpec.dhall kubernetes
  , BucketTopicStatus =
      ./types/io.rook.ceph.v1.BucketTopicStatus.dhall kubernetes
  , CSICephFSSpec = ./types/io.rook.ceph.v1.CSICephFSSpec.dhall kubernetes
  , CSIDriverSpec = ./types/io.rook.ceph.v1.CSIDriverSpec.dhall kubernetes
  , Capacity = ./types/io.rook.ceph.v1.Capacity.dhall kubernetes
  , CephBlockPool = ./types/io.rook.ceph.v1.CephBlockPool.dhall kubernetes
  , CephBlockPoolList =
      ./types/io.rook.ceph.v1.CephBlockPoolList.dhall kubernetes
  , CephBlockPoolRadosNamespace =
      ./types/io.rook.ceph.v1.CephBlockPoolRadosNamespace.dhall kubernetes
  , CephBlockPoolRadosNamespaceList =
      ./types/io.rook.ceph.v1.CephBlockPoolRadosNamespaceList.dhall kubernetes
  , CephBlockPoolRadosNamespaceSpec =
      ./types/io.rook.ceph.v1.CephBlockPoolRadosNamespaceSpec.dhall kubernetes
  , CephBlockPoolRadosNamespaceStatus =
      ./types/io.rook.ceph.v1.CephBlockPoolRadosNamespaceStatus.dhall kubernetes
  , CephBlockPoolStatus =
      ./types/io.rook.ceph.v1.CephBlockPoolStatus.dhall kubernetes
  , CephBucketNotification =
      ./types/io.rook.ceph.v1.CephBucketNotification.dhall kubernetes
  , CephBucketNotificationList =
      ./types/io.rook.ceph.v1.CephBucketNotificationList.dhall kubernetes
  , CephBucketTopic = ./types/io.rook.ceph.v1.CephBucketTopic.dhall kubernetes
  , CephBucketTopicList =
      ./types/io.rook.ceph.v1.CephBucketTopicList.dhall kubernetes
  , CephCOSIDriver = ./types/io.rook.ceph.v1.CephCOSIDriver.dhall kubernetes
  , CephCOSIDriverList =
      ./types/io.rook.ceph.v1.CephCOSIDriverList.dhall kubernetes
  , CephCOSIDriverSpec =
      ./types/io.rook.ceph.v1.CephCOSIDriverSpec.dhall kubernetes
  , CephClient = ./types/io.rook.ceph.v1.CephClient.dhall kubernetes
  , CephClientList = ./types/io.rook.ceph.v1.CephClientList.dhall kubernetes
  , CephClientStatus = ./types/io.rook.ceph.v1.CephClientStatus.dhall kubernetes
  , CephCluster = ./types/io.rook.ceph.v1.CephCluster.dhall kubernetes
  , CephClusterHealthCheckSpec =
      ./types/io.rook.ceph.v1.CephClusterHealthCheckSpec.dhall kubernetes
  , CephClusterList = ./types/io.rook.ceph.v1.CephClusterList.dhall kubernetes
  , CephDaemonsVersions =
      ./types/io.rook.ceph.v1.CephDaemonsVersions.dhall kubernetes
  , CephFilesystem = ./types/io.rook.ceph.v1.CephFilesystem.dhall kubernetes
  , CephFilesystemList =
      ./types/io.rook.ceph.v1.CephFilesystemList.dhall kubernetes
  , CephFilesystemMirror =
      ./types/io.rook.ceph.v1.CephFilesystemMirror.dhall kubernetes
  , CephFilesystemMirrorList =
      ./types/io.rook.ceph.v1.CephFilesystemMirrorList.dhall kubernetes
  , CephFilesystemStatus =
      ./types/io.rook.ceph.v1.CephFilesystemStatus.dhall kubernetes
  , CephFilesystemSubVolumeGroup =
      ./types/io.rook.ceph.v1.CephFilesystemSubVolumeGroup.dhall kubernetes
  , CephFilesystemSubVolumeGroupList =
      ./types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupList.dhall kubernetes
  , CephFilesystemSubVolumeGroupSpec =
      ./types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpec.dhall kubernetes
  , CephFilesystemSubVolumeGroupSpecPinning =
      ./types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpecPinning.dhall
        kubernetes
  , CephFilesystemSubVolumeGroupStatus =
      ./types/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
        kubernetes
  , CephHealthMessage =
      ./types/io.rook.ceph.v1.CephHealthMessage.dhall kubernetes
  , CephNFS = ./types/io.rook.ceph.v1.CephNFS.dhall kubernetes
  , CephNFSList = ./types/io.rook.ceph.v1.CephNFSList.dhall kubernetes
  , CephObjectRealm = ./types/io.rook.ceph.v1.CephObjectRealm.dhall kubernetes
  , CephObjectRealmList =
      ./types/io.rook.ceph.v1.CephObjectRealmList.dhall kubernetes
  , CephObjectStore = ./types/io.rook.ceph.v1.CephObjectStore.dhall kubernetes
  , CephObjectStoreList =
      ./types/io.rook.ceph.v1.CephObjectStoreList.dhall kubernetes
  , CephObjectStoreUser =
      ./types/io.rook.ceph.v1.CephObjectStoreUser.dhall kubernetes
  , CephObjectStoreUserList =
      ./types/io.rook.ceph.v1.CephObjectStoreUserList.dhall kubernetes
  , CephObjectZone = ./types/io.rook.ceph.v1.CephObjectZone.dhall kubernetes
  , CephObjectZoneGroup =
      ./types/io.rook.ceph.v1.CephObjectZoneGroup.dhall kubernetes
  , CephObjectZoneGroupList =
      ./types/io.rook.ceph.v1.CephObjectZoneGroupList.dhall kubernetes
  , CephObjectZoneList =
      ./types/io.rook.ceph.v1.CephObjectZoneList.dhall kubernetes
  , CephRBDMirror = ./types/io.rook.ceph.v1.CephRBDMirror.dhall kubernetes
  , CephRBDMirrorList =
      ./types/io.rook.ceph.v1.CephRBDMirrorList.dhall kubernetes
  , CephStatus = ./types/io.rook.ceph.v1.CephStatus.dhall kubernetes
  , CephStorage = ./types/io.rook.ceph.v1.CephStorage.dhall kubernetes
  , CephVersionSpec = ./types/io.rook.ceph.v1.CephVersionSpec.dhall kubernetes
  , CleanupPolicySpec =
      ./types/io.rook.ceph.v1.CleanupPolicySpec.dhall kubernetes
  , ClientSpec = ./types/io.rook.ceph.v1.ClientSpec.dhall kubernetes
  , ClusterSpec = ./types/io.rook.ceph.v1.ClusterSpec.dhall kubernetes
  , ClusterStatus = ./types/io.rook.ceph.v1.ClusterStatus.dhall kubernetes
  , ClusterVersion = ./types/io.rook.ceph.v1.ClusterVersion.dhall kubernetes
  , CompressionSpec = ./types/io.rook.ceph.v1.CompressionSpec.dhall kubernetes
  , Condition = ./types/io.rook.ceph.v1.Condition.dhall kubernetes
  , ConfigFileVolumeSource =
      ./types/io.rook.ceph.v1.ConfigFileVolumeSource.dhall kubernetes
  , ConnectionsSpec = ./types/io.rook.ceph.v1.ConnectionsSpec.dhall kubernetes
  , CrashCollectorSpec =
      ./types/io.rook.ceph.v1.CrashCollectorSpec.dhall kubernetes
  , DaemonHealthSpec = ./types/io.rook.ceph.v1.DaemonHealthSpec.dhall kubernetes
  , DashboardSpec = ./types/io.rook.ceph.v1.DashboardSpec.dhall kubernetes
  , Device = ./types/io.rook.ceph.v1.Device.dhall kubernetes
  , DeviceClasses = ./types/io.rook.ceph.v1.DeviceClasses.dhall kubernetes
  , DisruptionManagementSpec =
      ./types/io.rook.ceph.v1.DisruptionManagementSpec.dhall kubernetes
  , EncryptionSpec = ./types/io.rook.ceph.v1.EncryptionSpec.dhall kubernetes
  , ErasureCodedSpec = ./types/io.rook.ceph.v1.ErasureCodedSpec.dhall kubernetes
  , ExternalSpec = ./types/io.rook.ceph.v1.ExternalSpec.dhall kubernetes
  , FSMirroringSpec = ./types/io.rook.ceph.v1.FSMirroringSpec.dhall kubernetes
  , FilesystemMirrorInfoPeerSpec =
      ./types/io.rook.ceph.v1.FilesystemMirrorInfoPeerSpec.dhall kubernetes
  , FilesystemMirroringInfo =
      ./types/io.rook.ceph.v1.FilesystemMirroringInfo.dhall kubernetes
  , FilesystemMirroringInfoSpec =
      ./types/io.rook.ceph.v1.FilesystemMirroringInfoSpec.dhall kubernetes
  , FilesystemMirroringSpec =
      ./types/io.rook.ceph.v1.FilesystemMirroringSpec.dhall kubernetes
  , FilesystemSnapshotScheduleStatusRetention =
      ./types/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusRetention.dhall
        kubernetes
  , FilesystemSnapshotScheduleStatusSpec =
      ./types/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusSpec.dhall
        kubernetes
  , FilesystemSnapshotSchedulesSpec =
      ./types/io.rook.ceph.v1.FilesystemSnapshotSchedulesSpec.dhall kubernetes
  , FilesystemSpec = ./types/io.rook.ceph.v1.FilesystemSpec.dhall kubernetes
  , FilesystemsSpec = ./types/io.rook.ceph.v1.FilesystemsSpec.dhall kubernetes
  , GaneshaRADOSSpec = ./types/io.rook.ceph.v1.GaneshaRADOSSpec.dhall kubernetes
  , GaneshaServerSpec =
      ./types/io.rook.ceph.v1.GaneshaServerSpec.dhall kubernetes
  , GatewaySpec = ./types/io.rook.ceph.v1.GatewaySpec.dhall kubernetes
  , HTTPEndpointSpec = ./types/io.rook.ceph.v1.HTTPEndpointSpec.dhall kubernetes
  , HealthCheckSpec = ./types/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes
  , HybridStorageSpec =
      ./types/io.rook.ceph.v1.HybridStorageSpec.dhall kubernetes
  , KafkaEndpointSpec =
      ./types/io.rook.ceph.v1.KafkaEndpointSpec.dhall kubernetes
  , KerberosConfigFiles =
      ./types/io.rook.ceph.v1.KerberosConfigFiles.dhall kubernetes
  , KerberosKeytabFile =
      ./types/io.rook.ceph.v1.KerberosKeytabFile.dhall kubernetes
  , KerberosSpec = ./types/io.rook.ceph.v1.KerberosSpec.dhall kubernetes
  , KeyManagementServiceSpec =
      ./types/io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes
  , KeyRotationSpec = ./types/io.rook.ceph.v1.KeyRotationSpec.dhall kubernetes
  , LogCollectorSpec = ./types/io.rook.ceph.v1.LogCollectorSpec.dhall kubernetes
  , MetadataServerSpec =
      ./types/io.rook.ceph.v1.MetadataServerSpec.dhall kubernetes
  , MgrSpec = ./types/io.rook.ceph.v1.MgrSpec.dhall kubernetes
  , MirrorHealthCheckSpec =
      ./types/io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes
  , MirroringInfoSpec =
      ./types/io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes
  , MirroringPeerSpec =
      ./types/io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes
  , MirroringSpec = ./types/io.rook.ceph.v1.MirroringSpec.dhall kubernetes
  , MirroringStatusSpec =
      ./types/io.rook.ceph.v1.MirroringStatusSpec.dhall kubernetes
  , Module = ./types/io.rook.ceph.v1.Module.dhall kubernetes
  , MonSpec = ./types/io.rook.ceph.v1.MonSpec.dhall kubernetes
  , MonZoneSpec = ./types/io.rook.ceph.v1.MonZoneSpec.dhall kubernetes
  , MonitoringSpec = ./types/io.rook.ceph.v1.MonitoringSpec.dhall kubernetes
  , MultiClusterServiceSpec =
      ./types/io.rook.ceph.v1.MultiClusterServiceSpec.dhall kubernetes
  , NFSGaneshaSpec = ./types/io.rook.ceph.v1.NFSGaneshaSpec.dhall kubernetes
  , NFSSecuritySpec = ./types/io.rook.ceph.v1.NFSSecuritySpec.dhall kubernetes
  , NamedBlockPoolSpec =
      ./types/io.rook.ceph.v1.NamedBlockPoolSpec.dhall kubernetes
  , NamedPoolSpec = ./types/io.rook.ceph.v1.NamedPoolSpec.dhall kubernetes
  , NetworkSpec = ./types/io.rook.ceph.v1.NetworkSpec.dhall kubernetes
  , Node = ./types/io.rook.ceph.v1.Node.dhall kubernetes
  , NotificationFilterRule =
      ./types/io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes
  , NotificationFilterSpec =
      ./types/io.rook.ceph.v1.NotificationFilterSpec.dhall kubernetes
  , NotificationKeyFilterRule =
      ./types/io.rook.ceph.v1.NotificationKeyFilterRule.dhall kubernetes
  , OSDStatus = ./types/io.rook.ceph.v1.OSDStatus.dhall kubernetes
  , OSDStore = ./types/io.rook.ceph.v1.OSDStore.dhall kubernetes
  , ObjectEndpoints = ./types/io.rook.ceph.v1.ObjectEndpoints.dhall kubernetes
  , ObjectHealthCheckSpec =
      ./types/io.rook.ceph.v1.ObjectHealthCheckSpec.dhall kubernetes
  , ObjectRealmSpec = ./types/io.rook.ceph.v1.ObjectRealmSpec.dhall kubernetes
  , ObjectStoreSecuritySpec =
      ./types/io.rook.ceph.v1.ObjectStoreSecuritySpec.dhall kubernetes
  , ObjectStoreSpec = ./types/io.rook.ceph.v1.ObjectStoreSpec.dhall kubernetes
  , ObjectStoreStatus =
      ./types/io.rook.ceph.v1.ObjectStoreStatus.dhall kubernetes
  , ObjectStoreUserSpec =
      ./types/io.rook.ceph.v1.ObjectStoreUserSpec.dhall kubernetes
  , ObjectStoreUserStatus =
      ./types/io.rook.ceph.v1.ObjectStoreUserStatus.dhall kubernetes
  , ObjectUserCapSpec =
      ./types/io.rook.ceph.v1.ObjectUserCapSpec.dhall kubernetes
  , ObjectUserQuotaSpec =
      ./types/io.rook.ceph.v1.ObjectUserQuotaSpec.dhall kubernetes
  , ObjectZoneGroupSpec =
      ./types/io.rook.ceph.v1.ObjectZoneGroupSpec.dhall kubernetes
  , ObjectZoneSpec = ./types/io.rook.ceph.v1.ObjectZoneSpec.dhall kubernetes
  , PeerRemoteSpec = ./types/io.rook.ceph.v1.PeerRemoteSpec.dhall kubernetes
  , PeerStatSpec = ./types/io.rook.ceph.v1.PeerStatSpec.dhall kubernetes
  , PeersSpec = ./types/io.rook.ceph.v1.PeersSpec.dhall kubernetes
  , Placement = ./types/io.rook.ceph.v1.Placement.dhall kubernetes
  , PoolMirroringInfo =
      ./types/io.rook.ceph.v1.PoolMirroringInfo.dhall kubernetes
  , PoolMirroringStatus =
      ./types/io.rook.ceph.v1.PoolMirroringStatus.dhall kubernetes
  , PoolMirroringStatusSummarySpec =
      ./types/io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall kubernetes
  , PoolSpec = ./types/io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , ProbeSpec = ./types/io.rook.ceph.v1.ProbeSpec.dhall kubernetes
  , PullSpec = ./types/io.rook.ceph.v1.PullSpec.dhall kubernetes
  , QuotaSpec = ./types/io.rook.ceph.v1.QuotaSpec.dhall kubernetes
  , RBDMirroringSpec = ./types/io.rook.ceph.v1.RBDMirroringSpec.dhall kubernetes
  , RGWServiceSpec = ./types/io.rook.ceph.v1.RGWServiceSpec.dhall kubernetes
  , ReadAffinitySpec = ./types/io.rook.ceph.v1.ReadAffinitySpec.dhall kubernetes
  , ReplicatedSpec = ./types/io.rook.ceph.v1.ReplicatedSpec.dhall kubernetes
  , SSSDSidecar = ./types/io.rook.ceph.v1.SSSDSidecar.dhall kubernetes
  , SSSDSidecarAdditionalFile =
      ./types/io.rook.ceph.v1.SSSDSidecarAdditionalFile.dhall kubernetes
  , SSSDSidecarConfigFile =
      ./types/io.rook.ceph.v1.SSSDSidecarConfigFile.dhall kubernetes
  , SSSDSpec = ./types/io.rook.ceph.v1.SSSDSpec.dhall kubernetes
  , SanitizeDisksSpec =
      ./types/io.rook.ceph.v1.SanitizeDisksSpec.dhall kubernetes
  , SecuritySpec = ./types/io.rook.ceph.v1.SecuritySpec.dhall kubernetes
  , Selection = ./types/io.rook.ceph.v1.Selection.dhall kubernetes
  , SnapshotSchedule = ./types/io.rook.ceph.v1.SnapshotSchedule.dhall kubernetes
  , SnapshotScheduleRetentionSpec =
      ./types/io.rook.ceph.v1.SnapshotScheduleRetentionSpec.dhall kubernetes
  , SnapshotScheduleSpec =
      ./types/io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes
  , SnapshotScheduleStatusSpec =
      ./types/io.rook.ceph.v1.SnapshotScheduleStatusSpec.dhall kubernetes
  , SnapshotSchedulesSpec =
      ./types/io.rook.ceph.v1.SnapshotSchedulesSpec.dhall kubernetes
  , StatesSpec = ./types/io.rook.ceph.v1.StatesSpec.dhall kubernetes
  , Status = ./types/io.rook.ceph.v1.Status.dhall kubernetes
  , StorageClassDeviceSet =
      ./types/io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes
  , StorageScopeSpec = ./types/io.rook.ceph.v1.StorageScopeSpec.dhall kubernetes
  , StretchClusterSpec =
      ./types/io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes
  , TopicEndpointSpec =
      ./types/io.rook.ceph.v1.TopicEndpointSpec.dhall kubernetes
  , VolumeClaimTemplate =
      ./types/io.rook.ceph.v1.VolumeClaimTemplate.dhall kubernetes
  , ZoneSpec = ./types/io.rook.ceph.v1.ZoneSpec.dhall kubernetes
  }
