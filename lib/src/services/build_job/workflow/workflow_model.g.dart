// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkflowModelImpl _$$WorkflowModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkflowModelImpl(
      firebase: WorkflowFirebaseConfig.fromJson(
          json['firebase'] as Map<String, dynamic>),
      ios: WorkflowIosConfig.fromJson(json['ios'] as Map<String, dynamic>),
      distribution:
          $enumDecode(_$BuildDistributionChannelEnumMap, json['distribution']),
      organizationId: json['organizationId'] as String,
      flutter: WorkflowFlutterConfig.fromJson(
          json['flutter'] as Map<String, dynamic>),
      shorebird: WorkflowShorebirdConfig.fromJson(
          json['shorebird'] as Map<String, dynamic>),
      workflowName: json['workflowName'] as String,
    );

Map<String, dynamic> _$$WorkflowModelImplToJson(_$WorkflowModelImpl instance) =>
    <String, dynamic>{
      'firebase': instance.firebase,
      'ios': instance.ios,
      'distribution': _$BuildDistributionChannelEnumMap[instance.distribution]!,
      'organizationId': instance.organizationId,
      'flutter': instance.flutter,
      'shorebird': instance.shorebird,
      'workflowName': instance.workflowName,
    };

const _$BuildDistributionChannelEnumMap = {
  BuildDistributionChannel.firebaseAppDistribution: 'firebaseAppDistribution',
  BuildDistributionChannel.testFlight: 'testFlight',
  BuildDistributionChannel.playStoreInternal: 'playStoreInternal',
  BuildDistributionChannel.playStoreBeta: 'playStoreBeta',
};

_$WorkflowShorebirdConfigImpl _$$WorkflowShorebirdConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkflowShorebirdConfigImpl(
      token: json['token'] as String? ?? null,
      yamlDownloadUrl: json['yamlDownloadUrl'] as String? ?? null,
      useShorebird: json['useShorebird'] as bool? ?? null,
    );

Map<String, dynamic> _$$WorkflowShorebirdConfigImplToJson(
        _$WorkflowShorebirdConfigImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'yamlDownloadUrl': instance.yamlDownloadUrl,
      'useShorebird': instance.useShorebird,
    };

_$WorkflowFirebaseConfigImpl _$$WorkflowFirebaseConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkflowFirebaseConfigImpl(
      appDistribution: AppDistributionConfig.fromJson(
          json['appDistribution'] as Map<String, dynamic>),
      appIdIos: json['appIdIos'] as String? ?? null,
      serviceAccountJson: json['serviceAccountJson'] as String? ?? null,
    );

Map<String, dynamic> _$$WorkflowFirebaseConfigImplToJson(
        _$WorkflowFirebaseConfigImpl instance) =>
    <String, dynamic>{
      'appDistribution': instance.appDistribution,
      'appIdIos': instance.appIdIos,
      'serviceAccountJson': instance.serviceAccountJson,
    };

_$WorkflowIosConfigImpl _$$WorkflowIosConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkflowIosConfigImpl(
      exportOptions: json['exportOptions'] as String? ?? null,
      p12: json['p12'] as String? ?? null,
      provisioningProfile: json['provisioningProfile'] == null
          ? null
          : WorkflowProvisioningProfileConfig.fromJson(
              json['provisioningProfile'] as Map<String, dynamic>),
      appStoreConnectAPI: json['appStoreConnectAPI'] == null
          ? null
          : WorkflowAppStoreConnectAPI.fromJson(
              json['appStoreConnectAPI'] as Map<String, dynamic>),
      teamId: json['teamId'] as String? ?? null,
    );

Map<String, dynamic> _$$WorkflowIosConfigImplToJson(
        _$WorkflowIosConfigImpl instance) =>
    <String, dynamic>{
      'exportOptions': instance.exportOptions,
      'p12': instance.p12,
      'provisioningProfile': instance.provisioningProfile,
      'appStoreConnectAPI': instance.appStoreConnectAPI,
      'teamId': instance.teamId,
    };

_$WorkflowAppStoreConnectAPIImpl _$$WorkflowAppStoreConnectAPIImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkflowAppStoreConnectAPIImpl(
      p8: json['p8'] as String? ?? null,
      keyId: json['keyId'] as String? ?? null,
      issuerId: json['issuerId'] as String? ?? null,
    );

Map<String, dynamic> _$$WorkflowAppStoreConnectAPIImplToJson(
        _$WorkflowAppStoreConnectAPIImpl instance) =>
    <String, dynamic>{
      'p8': instance.p8,
      'keyId': instance.keyId,
      'issuerId': instance.issuerId,
    };

_$WorkflowProvisioningProfileConfigImpl
    _$$WorkflowProvisioningProfileConfigImplFromJson(
            Map<String, dynamic> json) =>
        _$WorkflowProvisioningProfileConfigImpl(
          url: json['url'] as String? ?? null,
          name: json['name'] as String? ?? null,
        );

Map<String, dynamic> _$$WorkflowProvisioningProfileConfigImplToJson(
        _$WorkflowProvisioningProfileConfigImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'name': instance.name,
    };

_$WorkflowFlutterConfigImpl _$$WorkflowFlutterConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkflowFlutterConfigImpl(
      flavor: $enumDecode(_$FlavorEnumMap, json['flavor']),
      version: json['version'] as String,
      dartDefine: (json['dartDefine'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
    );

Map<String, dynamic> _$$WorkflowFlutterConfigImplToJson(
        _$WorkflowFlutterConfigImpl instance) =>
    <String, dynamic>{
      'flavor': _$FlavorEnumMap[instance.flavor]!,
      'version': instance.version,
      'dartDefine': instance.dartDefine,
    };

const _$FlavorEnumMap = {
  Flavor.none: 'none',
  Flavor.dev: 'dev',
  Flavor.stage: 'stage',
  Flavor.prod: 'prod',
};

_$AppDistributionConfigImpl _$$AppDistributionConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$AppDistributionConfigImpl(
      testerGroups: (json['testerGroups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          null,
    );

Map<String, dynamic> _$$AppDistributionConfigImplToJson(
        _$AppDistributionConfigImpl instance) =>
    <String, dynamic>{
      'testerGroups': instance.testerGroups,
    };
