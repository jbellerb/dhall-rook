λ(kubernetes : ./kubernetes.dhall) →
  { Connection = ./defaults/io.objectbucket.v1alpha1.Connection.dhall kubernetes
  , Endpoint = ./defaults/io.objectbucket.v1alpha1.Endpoint.dhall kubernetes
  , ObjectBucket =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucket.dhall kubernetes
  , ObjectBucketClaim =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketClaim.dhall kubernetes
  , ObjectBucketClaimList =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketClaimList.dhall kubernetes
  , ObjectBucketClaimSpec =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketClaimSpec.dhall kubernetes
  , ObjectBucketClaimStatus =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketClaimStatus.dhall
        kubernetes
  , ObjectBucketList =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketList.dhall kubernetes
  , ObjectBucketSpec =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketSpec.dhall kubernetes
  , ObjectBucketStatus =
      ./defaults/io.objectbucket.v1alpha1.ObjectBucketStatus.dhall kubernetes
  , AMQPEndpointSpec =
      ./defaults/io.rook.ceph.v1.AMQPEndpointSpec.dhall kubernetes
  , BucketHealthCheckSpec =
      ./defaults/io.rook.ceph.v1.BucketHealthCheckSpec.dhall kubernetes
  , BucketNotificationSpec =
      ./defaults/io.rook.ceph.v1.BucketNotificationSpec.dhall kubernetes
  , BucketStatus = ./defaults/io.rook.ceph.v1.BucketStatus.dhall kubernetes
  , BucketTopicSpec =
      ./defaults/io.rook.ceph.v1.BucketTopicSpec.dhall kubernetes
  , BucketTopicStatus =
      ./defaults/io.rook.ceph.v1.BucketTopicStatus.dhall kubernetes
  , Capacity = ./defaults/io.rook.ceph.v1.Capacity.dhall kubernetes
  , CephBlockPool = ./defaults/io.rook.ceph.v1.CephBlockPool.dhall kubernetes
  , CephBlockPoolList =
      ./defaults/io.rook.ceph.v1.CephBlockPoolList.dhall kubernetes
  , CephBlockPoolRadosNamespace =
      ./defaults/io.rook.ceph.v1.CephBlockPoolRadosNamespace.dhall kubernetes
  , CephBlockPoolRadosNamespaceList =
      ./defaults/io.rook.ceph.v1.CephBlockPoolRadosNamespaceList.dhall
        kubernetes
  , CephBlockPoolRadosNamespaceSpec =
      ./defaults/io.rook.ceph.v1.CephBlockPoolRadosNamespaceSpec.dhall
        kubernetes
  , CephBlockPoolRadosNamespaceStatus =
      ./defaults/io.rook.ceph.v1.CephBlockPoolRadosNamespaceStatus.dhall
        kubernetes
  , CephBlockPoolStatus =
      ./defaults/io.rook.ceph.v1.CephBlockPoolStatus.dhall kubernetes
  , CephBucketNotification =
      ./defaults/io.rook.ceph.v1.CephBucketNotification.dhall kubernetes
  , CephBucketNotificationList =
      ./defaults/io.rook.ceph.v1.CephBucketNotificationList.dhall kubernetes
  , CephBucketTopic =
      ./defaults/io.rook.ceph.v1.CephBucketTopic.dhall kubernetes
  , CephBucketTopicList =
      ./defaults/io.rook.ceph.v1.CephBucketTopicList.dhall kubernetes
  , CephClient = ./defaults/io.rook.ceph.v1.CephClient.dhall kubernetes
  , CephClientList = ./defaults/io.rook.ceph.v1.CephClientList.dhall kubernetes
  , CephClientStatus =
      ./defaults/io.rook.ceph.v1.CephClientStatus.dhall kubernetes
  , CephCluster = ./defaults/io.rook.ceph.v1.CephCluster.dhall kubernetes
  , CephClusterHealthCheckSpec =
      ./defaults/io.rook.ceph.v1.CephClusterHealthCheckSpec.dhall kubernetes
  , CephClusterList =
      ./defaults/io.rook.ceph.v1.CephClusterList.dhall kubernetes
  , CephDaemonsVersions =
      ./defaults/io.rook.ceph.v1.CephDaemonsVersions.dhall kubernetes
  , CephFilesystem = ./defaults/io.rook.ceph.v1.CephFilesystem.dhall kubernetes
  , CephFilesystemList =
      ./defaults/io.rook.ceph.v1.CephFilesystemList.dhall kubernetes
  , CephFilesystemMirror =
      ./defaults/io.rook.ceph.v1.CephFilesystemMirror.dhall kubernetes
  , CephFilesystemMirrorList =
      ./defaults/io.rook.ceph.v1.CephFilesystemMirrorList.dhall kubernetes
  , CephFilesystemStatus =
      ./defaults/io.rook.ceph.v1.CephFilesystemStatus.dhall kubernetes
  , CephFilesystemSubVolumeGroup =
      ./defaults/io.rook.ceph.v1.CephFilesystemSubVolumeGroup.dhall kubernetes
  , CephFilesystemSubVolumeGroupList =
      ./defaults/io.rook.ceph.v1.CephFilesystemSubVolumeGroupList.dhall
        kubernetes
  , CephFilesystemSubVolumeGroupSpec =
      ./defaults/io.rook.ceph.v1.CephFilesystemSubVolumeGroupSpec.dhall
        kubernetes
  , CephFilesystemSubVolumeGroupStatus =
      ./defaults/io.rook.ceph.v1.CephFilesystemSubVolumeGroupStatus.dhall
        kubernetes
  , CephHealthMessage =
      ./defaults/io.rook.ceph.v1.CephHealthMessage.dhall kubernetes
  , CephNFS = ./defaults/io.rook.ceph.v1.CephNFS.dhall kubernetes
  , CephNFSList = ./defaults/io.rook.ceph.v1.CephNFSList.dhall kubernetes
  , CephObjectRealm =
      ./defaults/io.rook.ceph.v1.CephObjectRealm.dhall kubernetes
  , CephObjectRealmList =
      ./defaults/io.rook.ceph.v1.CephObjectRealmList.dhall kubernetes
  , CephObjectStore =
      ./defaults/io.rook.ceph.v1.CephObjectStore.dhall kubernetes
  , CephObjectStoreList =
      ./defaults/io.rook.ceph.v1.CephObjectStoreList.dhall kubernetes
  , CephObjectStoreUser =
      ./defaults/io.rook.ceph.v1.CephObjectStoreUser.dhall kubernetes
  , CephObjectStoreUserList =
      ./defaults/io.rook.ceph.v1.CephObjectStoreUserList.dhall kubernetes
  , CephObjectZone = ./defaults/io.rook.ceph.v1.CephObjectZone.dhall kubernetes
  , CephObjectZoneGroup =
      ./defaults/io.rook.ceph.v1.CephObjectZoneGroup.dhall kubernetes
  , CephObjectZoneGroupList =
      ./defaults/io.rook.ceph.v1.CephObjectZoneGroupList.dhall kubernetes
  , CephObjectZoneList =
      ./defaults/io.rook.ceph.v1.CephObjectZoneList.dhall kubernetes
  , CephRBDMirror = ./defaults/io.rook.ceph.v1.CephRBDMirror.dhall kubernetes
  , CephRBDMirrorList =
      ./defaults/io.rook.ceph.v1.CephRBDMirrorList.dhall kubernetes
  , CephStatus = ./defaults/io.rook.ceph.v1.CephStatus.dhall kubernetes
  , CephStorage = ./defaults/io.rook.ceph.v1.CephStorage.dhall kubernetes
  , CephVersionSpec =
      ./defaults/io.rook.ceph.v1.CephVersionSpec.dhall kubernetes
  , CleanupPolicySpec =
      ./defaults/io.rook.ceph.v1.CleanupPolicySpec.dhall kubernetes
  , ClientSpec = ./defaults/io.rook.ceph.v1.ClientSpec.dhall kubernetes
  , ClusterSpec = ./defaults/io.rook.ceph.v1.ClusterSpec.dhall kubernetes
  , ClusterStatus = ./defaults/io.rook.ceph.v1.ClusterStatus.dhall kubernetes
  , ClusterVersion = ./defaults/io.rook.ceph.v1.ClusterVersion.dhall kubernetes
  , CompressionSpec =
      ./defaults/io.rook.ceph.v1.CompressionSpec.dhall kubernetes
  , Condition = ./defaults/io.rook.ceph.v1.Condition.dhall kubernetes
  , ConnectionsSpec =
      ./defaults/io.rook.ceph.v1.ConnectionsSpec.dhall kubernetes
  , CrashCollectorSpec =
      ./defaults/io.rook.ceph.v1.CrashCollectorSpec.dhall kubernetes
  , DaemonHealthSpec =
      ./defaults/io.rook.ceph.v1.DaemonHealthSpec.dhall kubernetes
  , DashboardSpec = ./defaults/io.rook.ceph.v1.DashboardSpec.dhall kubernetes
  , Device = ./defaults/io.rook.ceph.v1.Device.dhall kubernetes
  , DeviceClasses = ./defaults/io.rook.ceph.v1.DeviceClasses.dhall kubernetes
  , DisruptionManagementSpec =
      ./defaults/io.rook.ceph.v1.DisruptionManagementSpec.dhall kubernetes
  , EncryptionSpec = ./defaults/io.rook.ceph.v1.EncryptionSpec.dhall kubernetes
  , ErasureCodedSpec =
      ./defaults/io.rook.ceph.v1.ErasureCodedSpec.dhall kubernetes
  , ExternalSpec = ./defaults/io.rook.ceph.v1.ExternalSpec.dhall kubernetes
  , FSMirroringSpec =
      ./defaults/io.rook.ceph.v1.FSMirroringSpec.dhall kubernetes
  , FilesystemMirrorInfoPeerSpec =
      ./defaults/io.rook.ceph.v1.FilesystemMirrorInfoPeerSpec.dhall kubernetes
  , FilesystemMirroringInfo =
      ./defaults/io.rook.ceph.v1.FilesystemMirroringInfo.dhall kubernetes
  , FilesystemMirroringInfoSpec =
      ./defaults/io.rook.ceph.v1.FilesystemMirroringInfoSpec.dhall kubernetes
  , FilesystemMirroringSpec =
      ./defaults/io.rook.ceph.v1.FilesystemMirroringSpec.dhall kubernetes
  , FilesystemSnapshotScheduleStatusRetention =
      ./defaults/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusRetention.dhall
        kubernetes
  , FilesystemSnapshotScheduleStatusSpec =
      ./defaults/io.rook.ceph.v1.FilesystemSnapshotScheduleStatusSpec.dhall
        kubernetes
  , FilesystemSnapshotSchedulesSpec =
      ./defaults/io.rook.ceph.v1.FilesystemSnapshotSchedulesSpec.dhall
        kubernetes
  , FilesystemSpec = ./defaults/io.rook.ceph.v1.FilesystemSpec.dhall kubernetes
  , FilesystemsSpec =
      ./defaults/io.rook.ceph.v1.FilesystemsSpec.dhall kubernetes
  , GaneshaRADOSSpec =
      ./defaults/io.rook.ceph.v1.GaneshaRADOSSpec.dhall kubernetes
  , GaneshaServerSpec =
      ./defaults/io.rook.ceph.v1.GaneshaServerSpec.dhall kubernetes
  , GatewaySpec = ./defaults/io.rook.ceph.v1.GatewaySpec.dhall kubernetes
  , HTTPEndpointSpec =
      ./defaults/io.rook.ceph.v1.HTTPEndpointSpec.dhall kubernetes
  , HealthCheckSpec =
      ./defaults/io.rook.ceph.v1.HealthCheckSpec.dhall kubernetes
  , HybridStorageSpec =
      ./defaults/io.rook.ceph.v1.HybridStorageSpec.dhall kubernetes
  , KafkaEndpointSpec =
      ./defaults/io.rook.ceph.v1.KafkaEndpointSpec.dhall kubernetes
  , KeyManagementServiceSpec =
      ./defaults/io.rook.ceph.v1.KeyManagementServiceSpec.dhall kubernetes
  , LogCollectorSpec =
      ./defaults/io.rook.ceph.v1.LogCollectorSpec.dhall kubernetes
  , MetadataServerSpec =
      ./defaults/io.rook.ceph.v1.MetadataServerSpec.dhall kubernetes
  , MgrSpec = ./defaults/io.rook.ceph.v1.MgrSpec.dhall kubernetes
  , MirrorHealthCheckSpec =
      ./defaults/io.rook.ceph.v1.MirrorHealthCheckSpec.dhall kubernetes
  , MirroringInfoSpec =
      ./defaults/io.rook.ceph.v1.MirroringInfoSpec.dhall kubernetes
  , MirroringPeerSpec =
      ./defaults/io.rook.ceph.v1.MirroringPeerSpec.dhall kubernetes
  , MirroringSpec = ./defaults/io.rook.ceph.v1.MirroringSpec.dhall kubernetes
  , MirroringStatusSpec =
      ./defaults/io.rook.ceph.v1.MirroringStatusSpec.dhall kubernetes
  , Module = ./defaults/io.rook.ceph.v1.Module.dhall kubernetes
  , MonSpec = ./defaults/io.rook.ceph.v1.MonSpec.dhall kubernetes
  , MonitoringSpec = ./defaults/io.rook.ceph.v1.MonitoringSpec.dhall kubernetes
  , NFSGaneshaSpec = ./defaults/io.rook.ceph.v1.NFSGaneshaSpec.dhall kubernetes
  , NamedBlockPoolSpec =
      ./defaults/io.rook.ceph.v1.NamedBlockPoolSpec.dhall kubernetes
  , NamedPoolSpec = ./defaults/io.rook.ceph.v1.NamedPoolSpec.dhall kubernetes
  , NetworkSpec = ./defaults/io.rook.ceph.v1.NetworkSpec.dhall kubernetes
  , Node = ./defaults/io.rook.ceph.v1.Node.dhall kubernetes
  , NotificationFilterRule =
      ./defaults/io.rook.ceph.v1.NotificationFilterRule.dhall kubernetes
  , NotificationFilterSpec =
      ./defaults/io.rook.ceph.v1.NotificationFilterSpec.dhall kubernetes
  , NotificationKeyFilterRule =
      ./defaults/io.rook.ceph.v1.NotificationKeyFilterRule.dhall kubernetes
  , ObjectRealmSpec =
      ./defaults/io.rook.ceph.v1.ObjectRealmSpec.dhall kubernetes
  , ObjectStoreSpec =
      ./defaults/io.rook.ceph.v1.ObjectStoreSpec.dhall kubernetes
  , ObjectStoreStatus =
      ./defaults/io.rook.ceph.v1.ObjectStoreStatus.dhall kubernetes
  , ObjectStoreUserSpec =
      ./defaults/io.rook.ceph.v1.ObjectStoreUserSpec.dhall kubernetes
  , ObjectStoreUserStatus =
      ./defaults/io.rook.ceph.v1.ObjectStoreUserStatus.dhall kubernetes
  , ObjectUserCapSpec =
      ./defaults/io.rook.ceph.v1.ObjectUserCapSpec.dhall kubernetes
  , ObjectUserQuotaSpec =
      ./defaults/io.rook.ceph.v1.ObjectUserQuotaSpec.dhall kubernetes
  , ObjectZoneGroupSpec =
      ./defaults/io.rook.ceph.v1.ObjectZoneGroupSpec.dhall kubernetes
  , ObjectZoneSpec = ./defaults/io.rook.ceph.v1.ObjectZoneSpec.dhall kubernetes
  , PeerRemoteSpec = ./defaults/io.rook.ceph.v1.PeerRemoteSpec.dhall kubernetes
  , PeerStatSpec = ./defaults/io.rook.ceph.v1.PeerStatSpec.dhall kubernetes
  , PeersSpec = ./defaults/io.rook.ceph.v1.PeersSpec.dhall kubernetes
  , Placement = ./defaults/io.rook.ceph.v1.Placement.dhall kubernetes
  , PoolMirroringInfo =
      ./defaults/io.rook.ceph.v1.PoolMirroringInfo.dhall kubernetes
  , PoolMirroringStatus =
      ./defaults/io.rook.ceph.v1.PoolMirroringStatus.dhall kubernetes
  , PoolMirroringStatusSummarySpec =
      ./defaults/io.rook.ceph.v1.PoolMirroringStatusSummarySpec.dhall kubernetes
  , PoolSpec = ./defaults/io.rook.ceph.v1.PoolSpec.dhall kubernetes
  , ProbeSpec = ./defaults/io.rook.ceph.v1.ProbeSpec.dhall kubernetes
  , PullSpec = ./defaults/io.rook.ceph.v1.PullSpec.dhall kubernetes
  , QuotaSpec = ./defaults/io.rook.ceph.v1.QuotaSpec.dhall kubernetes
  , RBDMirroringSpec =
      ./defaults/io.rook.ceph.v1.RBDMirroringSpec.dhall kubernetes
  , RGWServiceSpec = ./defaults/io.rook.ceph.v1.RGWServiceSpec.dhall kubernetes
  , ReplicatedSpec = ./defaults/io.rook.ceph.v1.ReplicatedSpec.dhall kubernetes
  , SanitizeDisksSpec =
      ./defaults/io.rook.ceph.v1.SanitizeDisksSpec.dhall kubernetes
  , SecuritySpec = ./defaults/io.rook.ceph.v1.SecuritySpec.dhall kubernetes
  , Selection = ./defaults/io.rook.ceph.v1.Selection.dhall kubernetes
  , SnapshotSchedule =
      ./defaults/io.rook.ceph.v1.SnapshotSchedule.dhall kubernetes
  , SnapshotScheduleRetentionSpec =
      ./defaults/io.rook.ceph.v1.SnapshotScheduleRetentionSpec.dhall kubernetes
  , SnapshotScheduleSpec =
      ./defaults/io.rook.ceph.v1.SnapshotScheduleSpec.dhall kubernetes
  , SnapshotScheduleStatusSpec =
      ./defaults/io.rook.ceph.v1.SnapshotScheduleStatusSpec.dhall kubernetes
  , SnapshotSchedulesSpec =
      ./defaults/io.rook.ceph.v1.SnapshotSchedulesSpec.dhall kubernetes
  , StatesSpec = ./defaults/io.rook.ceph.v1.StatesSpec.dhall kubernetes
  , Status = ./defaults/io.rook.ceph.v1.Status.dhall kubernetes
  , StorageClassDeviceSet =
      ./defaults/io.rook.ceph.v1.StorageClassDeviceSet.dhall kubernetes
  , StorageScopeSpec =
      ./defaults/io.rook.ceph.v1.StorageScopeSpec.dhall kubernetes
  , StretchClusterSpec =
      ./defaults/io.rook.ceph.v1.StretchClusterSpec.dhall kubernetes
  , StretchClusterZoneSpec =
      ./defaults/io.rook.ceph.v1.StretchClusterZoneSpec.dhall kubernetes
  , TopicEndpointSpec =
      ./defaults/io.rook.ceph.v1.TopicEndpointSpec.dhall kubernetes
  , ZoneSpec = ./defaults/io.rook.ceph.v1.ZoneSpec.dhall kubernetes
  }
