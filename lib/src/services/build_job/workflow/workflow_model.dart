import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:openci_runner/src/features/user/domain/user_data.dart';

part 'workflow_model.freezed.dart';
part 'workflow_model.g.dart';

@freezed
class WorkflowModel with _$WorkflowModel {
  const factory WorkflowModel({
    required WorkflowFirebaseConfig firebase,
    required WorkflowIosConfig ios,
    required BuildDistributionChannel distribution,
    required String organizationId,
    required WorkflowFlutterConfig flutter,
    required WorkflowShorebirdConfig shorebird,
    required String workflowName,
  }) = _WorkflowModel;
  factory WorkflowModel.fromJson(Map<String, Object?> json) =>
      _$WorkflowModelFromJson(json);
}

@freezed
class WorkflowShorebirdConfig with _$WorkflowShorebirdConfig {
  const factory WorkflowShorebirdConfig({
    @Default(null) String? token,
    @Default(null) String? yamlDownloadUrl,
    @Default(null) bool? useShorebird,
  }) = _WorkflowShorebirdConfig;
  factory WorkflowShorebirdConfig.fromJson(Map<String, Object?> json) =>
      _$WorkflowShorebirdConfigFromJson(json);
}

@freezed
class WorkflowFirebaseConfig with _$WorkflowFirebaseConfig {
  const factory WorkflowFirebaseConfig({
    required AppDistributionConfig appDistribution,
    @Default(null) String? appIdIos,
    @Default(null) String? serviceAccountJson,
  }) = _WorkflowFirebaseConfig;
  factory WorkflowFirebaseConfig.fromJson(Map<String, Object?> json) =>
      _$WorkflowFirebaseConfigFromJson(json);
}

@freezed
class WorkflowIosConfig with _$WorkflowIosConfig {
  const factory WorkflowIosConfig({
    @Default(null) String? exportOptions,
    @Default(null) String? p12,
    @Default(null) WorkflowProvisioningProfileConfig? provisioningProfile,
    @Default(null) WorkflowAppStoreConnectAPI? appStoreConnectAPI,
    @Default(null) String? teamId,
  }) = _WorkflowIosConfig;
  factory WorkflowIosConfig.fromJson(Map<String, Object?> json) =>
      _$WorkflowIosConfigFromJson(json);
}

@freezed
class WorkflowAppStoreConnectAPI with _$WorkflowAppStoreConnectAPI {
  const factory WorkflowAppStoreConnectAPI({
    @Default(null) String? p8,
    @Default(null) String? keyId,
    @Default(null) String? issuerId,
  }) = _WorkflowAppStoreConnectAPI;
  factory WorkflowAppStoreConnectAPI.fromJson(Map<String, Object?> json) =>
      _$WorkflowAppStoreConnectAPIFromJson(json);
}

@freezed
class WorkflowProvisioningProfileConfig
    with _$WorkflowProvisioningProfileConfig {
  const factory WorkflowProvisioningProfileConfig({
    @Default(null) String? url,
    @Default(null) String? name,
  }) = _WorkflowProvisioningProfileConfig;
  factory WorkflowProvisioningProfileConfig.fromJson(
    Map<String, Object?> json,
  ) =>
      _$WorkflowProvisioningProfileConfigFromJson(json);
}

@freezed
class WorkflowFlutterConfig with _$WorkflowFlutterConfig {
  const factory WorkflowFlutterConfig({
    required Flavor flavor,
    required String version,
    @Default(null) List<String>? dartDefine,
  }) = _WorkflowFlutterConfig;
  factory WorkflowFlutterConfig.fromJson(Map<String, Object?> json) =>
      _$WorkflowFlutterConfigFromJson(json);
}

@freezed
class AppDistributionConfig with _$AppDistributionConfig {
  const factory AppDistributionConfig({
    @Default(null) List<String>? testerGroups,
  }) = _AppDistributionConfig;
  factory AppDistributionConfig.fromJson(Map<String, Object?> json) =>
      _$AppDistributionConfigFromJson(json);
}

enum BuildDistributionChannel {
  firebaseAppDistribution,
  testFlight,
  playStoreInternal,
  playStoreBeta;
}
