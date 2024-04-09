// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'workflow_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkflowModel _$WorkflowModelFromJson(Map<String, dynamic> json) {
  return _WorkflowModel.fromJson(json);
}

/// @nodoc
mixin _$WorkflowModel {
  WorkflowFirebaseConfig get firebase => throw _privateConstructorUsedError;
  WorkflowIosConfig get ios => throw _privateConstructorUsedError;
  BuildDistributionChannel get distribution =>
      throw _privateConstructorUsedError;
  String get organizationId => throw _privateConstructorUsedError;
  WorkflowFlutterConfig get flutter => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkflowModelCopyWith<WorkflowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowModelCopyWith<$Res> {
  factory $WorkflowModelCopyWith(
          WorkflowModel value, $Res Function(WorkflowModel) then) =
      _$WorkflowModelCopyWithImpl<$Res, WorkflowModel>;
  @useResult
  $Res call(
      {WorkflowFirebaseConfig firebase,
      WorkflowIosConfig ios,
      BuildDistributionChannel distribution,
      String organizationId,
      WorkflowFlutterConfig flutter});

  $WorkflowFirebaseConfigCopyWith<$Res> get firebase;
  $WorkflowIosConfigCopyWith<$Res> get ios;
  $WorkflowFlutterConfigCopyWith<$Res> get flutter;
}

/// @nodoc
class _$WorkflowModelCopyWithImpl<$Res, $Val extends WorkflowModel>
    implements $WorkflowModelCopyWith<$Res> {
  _$WorkflowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebase = null,
    Object? ios = null,
    Object? distribution = null,
    Object? organizationId = null,
    Object? flutter = null,
  }) {
    return _then(_value.copyWith(
      firebase: null == firebase
          ? _value.firebase
          : firebase // ignore: cast_nullable_to_non_nullable
              as WorkflowFirebaseConfig,
      ios: null == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as WorkflowIosConfig,
      distribution: null == distribution
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as BuildDistributionChannel,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      flutter: null == flutter
          ? _value.flutter
          : flutter // ignore: cast_nullable_to_non_nullable
              as WorkflowFlutterConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkflowFirebaseConfigCopyWith<$Res> get firebase {
    return $WorkflowFirebaseConfigCopyWith<$Res>(_value.firebase, (value) {
      return _then(_value.copyWith(firebase: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkflowIosConfigCopyWith<$Res> get ios {
    return $WorkflowIosConfigCopyWith<$Res>(_value.ios, (value) {
      return _then(_value.copyWith(ios: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkflowFlutterConfigCopyWith<$Res> get flutter {
    return $WorkflowFlutterConfigCopyWith<$Res>(_value.flutter, (value) {
      return _then(_value.copyWith(flutter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkflowModelImplCopyWith<$Res>
    implements $WorkflowModelCopyWith<$Res> {
  factory _$$WorkflowModelImplCopyWith(
          _$WorkflowModelImpl value, $Res Function(_$WorkflowModelImpl) then) =
      __$$WorkflowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {WorkflowFirebaseConfig firebase,
      WorkflowIosConfig ios,
      BuildDistributionChannel distribution,
      String organizationId,
      WorkflowFlutterConfig flutter});

  @override
  $WorkflowFirebaseConfigCopyWith<$Res> get firebase;
  @override
  $WorkflowIosConfigCopyWith<$Res> get ios;
  @override
  $WorkflowFlutterConfigCopyWith<$Res> get flutter;
}

/// @nodoc
class __$$WorkflowModelImplCopyWithImpl<$Res>
    extends _$WorkflowModelCopyWithImpl<$Res, _$WorkflowModelImpl>
    implements _$$WorkflowModelImplCopyWith<$Res> {
  __$$WorkflowModelImplCopyWithImpl(
      _$WorkflowModelImpl _value, $Res Function(_$WorkflowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firebase = null,
    Object? ios = null,
    Object? distribution = null,
    Object? organizationId = null,
    Object? flutter = null,
  }) {
    return _then(_$WorkflowModelImpl(
      firebase: null == firebase
          ? _value.firebase
          : firebase // ignore: cast_nullable_to_non_nullable
              as WorkflowFirebaseConfig,
      ios: null == ios
          ? _value.ios
          : ios // ignore: cast_nullable_to_non_nullable
              as WorkflowIosConfig,
      distribution: null == distribution
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as BuildDistributionChannel,
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as String,
      flutter: null == flutter
          ? _value.flutter
          : flutter // ignore: cast_nullable_to_non_nullable
              as WorkflowFlutterConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowModelImpl implements _WorkflowModel {
  const _$WorkflowModelImpl(
      {required this.firebase,
      required this.ios,
      required this.distribution,
      required this.organizationId,
      required this.flutter});

  factory _$WorkflowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowModelImplFromJson(json);

  @override
  final WorkflowFirebaseConfig firebase;
  @override
  final WorkflowIosConfig ios;
  @override
  final BuildDistributionChannel distribution;
  @override
  final String organizationId;
  @override
  final WorkflowFlutterConfig flutter;

  @override
  String toString() {
    return 'WorkflowModel(firebase: $firebase, ios: $ios, distribution: $distribution, organizationId: $organizationId, flutter: $flutter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowModelImpl &&
            (identical(other.firebase, firebase) ||
                other.firebase == firebase) &&
            (identical(other.ios, ios) || other.ios == ios) &&
            (identical(other.distribution, distribution) ||
                other.distribution == distribution) &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.flutter, flutter) || other.flutter == flutter));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, firebase, ios, distribution, organizationId, flutter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowModelImplCopyWith<_$WorkflowModelImpl> get copyWith =>
      __$$WorkflowModelImplCopyWithImpl<_$WorkflowModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowModelImplToJson(
      this,
    );
  }
}

abstract class _WorkflowModel implements WorkflowModel {
  const factory _WorkflowModel(
      {required final WorkflowFirebaseConfig firebase,
      required final WorkflowIosConfig ios,
      required final BuildDistributionChannel distribution,
      required final String organizationId,
      required final WorkflowFlutterConfig flutter}) = _$WorkflowModelImpl;

  factory _WorkflowModel.fromJson(Map<String, dynamic> json) =
      _$WorkflowModelImpl.fromJson;

  @override
  WorkflowFirebaseConfig get firebase;
  @override
  WorkflowIosConfig get ios;
  @override
  BuildDistributionChannel get distribution;
  @override
  String get organizationId;
  @override
  WorkflowFlutterConfig get flutter;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowModelImplCopyWith<_$WorkflowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkflowFirebaseConfig _$WorkflowFirebaseConfigFromJson(
    Map<String, dynamic> json) {
  return _WorkflowFirebaseConfig.fromJson(json);
}

/// @nodoc
mixin _$WorkflowFirebaseConfig {
  AppDistributionConfig get appDistribution =>
      throw _privateConstructorUsedError;
  String? get appIdIos => throw _privateConstructorUsedError;
  String? get serviceAccountJson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkflowFirebaseConfigCopyWith<WorkflowFirebaseConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowFirebaseConfigCopyWith<$Res> {
  factory $WorkflowFirebaseConfigCopyWith(WorkflowFirebaseConfig value,
          $Res Function(WorkflowFirebaseConfig) then) =
      _$WorkflowFirebaseConfigCopyWithImpl<$Res, WorkflowFirebaseConfig>;
  @useResult
  $Res call(
      {AppDistributionConfig appDistribution,
      String? appIdIos,
      String? serviceAccountJson});

  $AppDistributionConfigCopyWith<$Res> get appDistribution;
}

/// @nodoc
class _$WorkflowFirebaseConfigCopyWithImpl<$Res,
        $Val extends WorkflowFirebaseConfig>
    implements $WorkflowFirebaseConfigCopyWith<$Res> {
  _$WorkflowFirebaseConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appDistribution = null,
    Object? appIdIos = freezed,
    Object? serviceAccountJson = freezed,
  }) {
    return _then(_value.copyWith(
      appDistribution: null == appDistribution
          ? _value.appDistribution
          : appDistribution // ignore: cast_nullable_to_non_nullable
              as AppDistributionConfig,
      appIdIos: freezed == appIdIos
          ? _value.appIdIos
          : appIdIos // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceAccountJson: freezed == serviceAccountJson
          ? _value.serviceAccountJson
          : serviceAccountJson // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppDistributionConfigCopyWith<$Res> get appDistribution {
    return $AppDistributionConfigCopyWith<$Res>(_value.appDistribution,
        (value) {
      return _then(_value.copyWith(appDistribution: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WorkflowFirebaseConfigImplCopyWith<$Res>
    implements $WorkflowFirebaseConfigCopyWith<$Res> {
  factory _$$WorkflowFirebaseConfigImplCopyWith(
          _$WorkflowFirebaseConfigImpl value,
          $Res Function(_$WorkflowFirebaseConfigImpl) then) =
      __$$WorkflowFirebaseConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AppDistributionConfig appDistribution,
      String? appIdIos,
      String? serviceAccountJson});

  @override
  $AppDistributionConfigCopyWith<$Res> get appDistribution;
}

/// @nodoc
class __$$WorkflowFirebaseConfigImplCopyWithImpl<$Res>
    extends _$WorkflowFirebaseConfigCopyWithImpl<$Res,
        _$WorkflowFirebaseConfigImpl>
    implements _$$WorkflowFirebaseConfigImplCopyWith<$Res> {
  __$$WorkflowFirebaseConfigImplCopyWithImpl(
      _$WorkflowFirebaseConfigImpl _value,
      $Res Function(_$WorkflowFirebaseConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appDistribution = null,
    Object? appIdIos = freezed,
    Object? serviceAccountJson = freezed,
  }) {
    return _then(_$WorkflowFirebaseConfigImpl(
      appDistribution: null == appDistribution
          ? _value.appDistribution
          : appDistribution // ignore: cast_nullable_to_non_nullable
              as AppDistributionConfig,
      appIdIos: freezed == appIdIos
          ? _value.appIdIos
          : appIdIos // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceAccountJson: freezed == serviceAccountJson
          ? _value.serviceAccountJson
          : serviceAccountJson // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowFirebaseConfigImpl implements _WorkflowFirebaseConfig {
  const _$WorkflowFirebaseConfigImpl(
      {required this.appDistribution,
      this.appIdIos = null,
      this.serviceAccountJson = null});

  factory _$WorkflowFirebaseConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowFirebaseConfigImplFromJson(json);

  @override
  final AppDistributionConfig appDistribution;
  @override
  @JsonKey()
  final String? appIdIos;
  @override
  @JsonKey()
  final String? serviceAccountJson;

  @override
  String toString() {
    return 'WorkflowFirebaseConfig(appDistribution: $appDistribution, appIdIos: $appIdIos, serviceAccountJson: $serviceAccountJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowFirebaseConfigImpl &&
            (identical(other.appDistribution, appDistribution) ||
                other.appDistribution == appDistribution) &&
            (identical(other.appIdIos, appIdIos) ||
                other.appIdIos == appIdIos) &&
            (identical(other.serviceAccountJson, serviceAccountJson) ||
                other.serviceAccountJson == serviceAccountJson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, appDistribution, appIdIos, serviceAccountJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowFirebaseConfigImplCopyWith<_$WorkflowFirebaseConfigImpl>
      get copyWith => __$$WorkflowFirebaseConfigImplCopyWithImpl<
          _$WorkflowFirebaseConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowFirebaseConfigImplToJson(
      this,
    );
  }
}

abstract class _WorkflowFirebaseConfig implements WorkflowFirebaseConfig {
  const factory _WorkflowFirebaseConfig(
      {required final AppDistributionConfig appDistribution,
      final String? appIdIos,
      final String? serviceAccountJson}) = _$WorkflowFirebaseConfigImpl;

  factory _WorkflowFirebaseConfig.fromJson(Map<String, dynamic> json) =
      _$WorkflowFirebaseConfigImpl.fromJson;

  @override
  AppDistributionConfig get appDistribution;
  @override
  String? get appIdIos;
  @override
  String? get serviceAccountJson;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowFirebaseConfigImplCopyWith<_$WorkflowFirebaseConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

WorkflowIosConfig _$WorkflowIosConfigFromJson(Map<String, dynamic> json) {
  return _WorkflowIosConfig.fromJson(json);
}

/// @nodoc
mixin _$WorkflowIosConfig {
  String? get exportOptions => throw _privateConstructorUsedError;
  String? get p12 => throw _privateConstructorUsedError;
  String? get provisioningProfile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkflowIosConfigCopyWith<WorkflowIosConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowIosConfigCopyWith<$Res> {
  factory $WorkflowIosConfigCopyWith(
          WorkflowIosConfig value, $Res Function(WorkflowIosConfig) then) =
      _$WorkflowIosConfigCopyWithImpl<$Res, WorkflowIosConfig>;
  @useResult
  $Res call({String? exportOptions, String? p12, String? provisioningProfile});
}

/// @nodoc
class _$WorkflowIosConfigCopyWithImpl<$Res, $Val extends WorkflowIosConfig>
    implements $WorkflowIosConfigCopyWith<$Res> {
  _$WorkflowIosConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exportOptions = freezed,
    Object? p12 = freezed,
    Object? provisioningProfile = freezed,
  }) {
    return _then(_value.copyWith(
      exportOptions: freezed == exportOptions
          ? _value.exportOptions
          : exportOptions // ignore: cast_nullable_to_non_nullable
              as String?,
      p12: freezed == p12
          ? _value.p12
          : p12 // ignore: cast_nullable_to_non_nullable
              as String?,
      provisioningProfile: freezed == provisioningProfile
          ? _value.provisioningProfile
          : provisioningProfile // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkflowIosConfigImplCopyWith<$Res>
    implements $WorkflowIosConfigCopyWith<$Res> {
  factory _$$WorkflowIosConfigImplCopyWith(_$WorkflowIosConfigImpl value,
          $Res Function(_$WorkflowIosConfigImpl) then) =
      __$$WorkflowIosConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? exportOptions, String? p12, String? provisioningProfile});
}

/// @nodoc
class __$$WorkflowIosConfigImplCopyWithImpl<$Res>
    extends _$WorkflowIosConfigCopyWithImpl<$Res, _$WorkflowIosConfigImpl>
    implements _$$WorkflowIosConfigImplCopyWith<$Res> {
  __$$WorkflowIosConfigImplCopyWithImpl(_$WorkflowIosConfigImpl _value,
      $Res Function(_$WorkflowIosConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exportOptions = freezed,
    Object? p12 = freezed,
    Object? provisioningProfile = freezed,
  }) {
    return _then(_$WorkflowIosConfigImpl(
      exportOptions: freezed == exportOptions
          ? _value.exportOptions
          : exportOptions // ignore: cast_nullable_to_non_nullable
              as String?,
      p12: freezed == p12
          ? _value.p12
          : p12 // ignore: cast_nullable_to_non_nullable
              as String?,
      provisioningProfile: freezed == provisioningProfile
          ? _value.provisioningProfile
          : provisioningProfile // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowIosConfigImpl implements _WorkflowIosConfig {
  const _$WorkflowIosConfigImpl(
      {this.exportOptions = null,
      this.p12 = null,
      this.provisioningProfile = null});

  factory _$WorkflowIosConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowIosConfigImplFromJson(json);

  @override
  @JsonKey()
  final String? exportOptions;
  @override
  @JsonKey()
  final String? p12;
  @override
  @JsonKey()
  final String? provisioningProfile;

  @override
  String toString() {
    return 'WorkflowIosConfig(exportOptions: $exportOptions, p12: $p12, provisioningProfile: $provisioningProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowIosConfigImpl &&
            (identical(other.exportOptions, exportOptions) ||
                other.exportOptions == exportOptions) &&
            (identical(other.p12, p12) || other.p12 == p12) &&
            (identical(other.provisioningProfile, provisioningProfile) ||
                other.provisioningProfile == provisioningProfile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, exportOptions, p12, provisioningProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowIosConfigImplCopyWith<_$WorkflowIosConfigImpl> get copyWith =>
      __$$WorkflowIosConfigImplCopyWithImpl<_$WorkflowIosConfigImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowIosConfigImplToJson(
      this,
    );
  }
}

abstract class _WorkflowIosConfig implements WorkflowIosConfig {
  const factory _WorkflowIosConfig(
      {final String? exportOptions,
      final String? p12,
      final String? provisioningProfile}) = _$WorkflowIosConfigImpl;

  factory _WorkflowIosConfig.fromJson(Map<String, dynamic> json) =
      _$WorkflowIosConfigImpl.fromJson;

  @override
  String? get exportOptions;
  @override
  String? get p12;
  @override
  String? get provisioningProfile;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowIosConfigImplCopyWith<_$WorkflowIosConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkflowFlutterConfig _$WorkflowFlutterConfigFromJson(
    Map<String, dynamic> json) {
  return _WorkflowFlutterConfig.fromJson(json);
}

/// @nodoc
mixin _$WorkflowFlutterConfig {
  Flavor get flavor => throw _privateConstructorUsedError;
  String get version => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkflowFlutterConfigCopyWith<WorkflowFlutterConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowFlutterConfigCopyWith<$Res> {
  factory $WorkflowFlutterConfigCopyWith(WorkflowFlutterConfig value,
          $Res Function(WorkflowFlutterConfig) then) =
      _$WorkflowFlutterConfigCopyWithImpl<$Res, WorkflowFlutterConfig>;
  @useResult
  $Res call({Flavor flavor, String version});
}

/// @nodoc
class _$WorkflowFlutterConfigCopyWithImpl<$Res,
        $Val extends WorkflowFlutterConfig>
    implements $WorkflowFlutterConfigCopyWith<$Res> {
  _$WorkflowFlutterConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? version = null,
  }) {
    return _then(_value.copyWith(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkflowFlutterConfigImplCopyWith<$Res>
    implements $WorkflowFlutterConfigCopyWith<$Res> {
  factory _$$WorkflowFlutterConfigImplCopyWith(
          _$WorkflowFlutterConfigImpl value,
          $Res Function(_$WorkflowFlutterConfigImpl) then) =
      __$$WorkflowFlutterConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Flavor flavor, String version});
}

/// @nodoc
class __$$WorkflowFlutterConfigImplCopyWithImpl<$Res>
    extends _$WorkflowFlutterConfigCopyWithImpl<$Res,
        _$WorkflowFlutterConfigImpl>
    implements _$$WorkflowFlutterConfigImplCopyWith<$Res> {
  __$$WorkflowFlutterConfigImplCopyWithImpl(_$WorkflowFlutterConfigImpl _value,
      $Res Function(_$WorkflowFlutterConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavor = null,
    Object? version = null,
  }) {
    return _then(_$WorkflowFlutterConfigImpl(
      flavor: null == flavor
          ? _value.flavor
          : flavor // ignore: cast_nullable_to_non_nullable
              as Flavor,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowFlutterConfigImpl implements _WorkflowFlutterConfig {
  const _$WorkflowFlutterConfigImpl(
      {required this.flavor, required this.version});

  factory _$WorkflowFlutterConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowFlutterConfigImplFromJson(json);

  @override
  final Flavor flavor;
  @override
  final String version;

  @override
  String toString() {
    return 'WorkflowFlutterConfig(flavor: $flavor, version: $version)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowFlutterConfigImpl &&
            (identical(other.flavor, flavor) || other.flavor == flavor) &&
            (identical(other.version, version) || other.version == version));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, flavor, version);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowFlutterConfigImplCopyWith<_$WorkflowFlutterConfigImpl>
      get copyWith => __$$WorkflowFlutterConfigImplCopyWithImpl<
          _$WorkflowFlutterConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowFlutterConfigImplToJson(
      this,
    );
  }
}

abstract class _WorkflowFlutterConfig implements WorkflowFlutterConfig {
  const factory _WorkflowFlutterConfig(
      {required final Flavor flavor,
      required final String version}) = _$WorkflowFlutterConfigImpl;

  factory _WorkflowFlutterConfig.fromJson(Map<String, dynamic> json) =
      _$WorkflowFlutterConfigImpl.fromJson;

  @override
  Flavor get flavor;
  @override
  String get version;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowFlutterConfigImplCopyWith<_$WorkflowFlutterConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AppDistributionConfig _$AppDistributionConfigFromJson(
    Map<String, dynamic> json) {
  return _AppDistributionConfig.fromJson(json);
}

/// @nodoc
mixin _$AppDistributionConfig {
  List<String>? get testerGroups => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppDistributionConfigCopyWith<AppDistributionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDistributionConfigCopyWith<$Res> {
  factory $AppDistributionConfigCopyWith(AppDistributionConfig value,
          $Res Function(AppDistributionConfig) then) =
      _$AppDistributionConfigCopyWithImpl<$Res, AppDistributionConfig>;
  @useResult
  $Res call({List<String>? testerGroups});
}

/// @nodoc
class _$AppDistributionConfigCopyWithImpl<$Res,
        $Val extends AppDistributionConfig>
    implements $AppDistributionConfigCopyWith<$Res> {
  _$AppDistributionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testerGroups = freezed,
  }) {
    return _then(_value.copyWith(
      testerGroups: freezed == testerGroups
          ? _value.testerGroups
          : testerGroups // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppDistributionConfigImplCopyWith<$Res>
    implements $AppDistributionConfigCopyWith<$Res> {
  factory _$$AppDistributionConfigImplCopyWith(
          _$AppDistributionConfigImpl value,
          $Res Function(_$AppDistributionConfigImpl) then) =
      __$$AppDistributionConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String>? testerGroups});
}

/// @nodoc
class __$$AppDistributionConfigImplCopyWithImpl<$Res>
    extends _$AppDistributionConfigCopyWithImpl<$Res,
        _$AppDistributionConfigImpl>
    implements _$$AppDistributionConfigImplCopyWith<$Res> {
  __$$AppDistributionConfigImplCopyWithImpl(_$AppDistributionConfigImpl _value,
      $Res Function(_$AppDistributionConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? testerGroups = freezed,
  }) {
    return _then(_$AppDistributionConfigImpl(
      testerGroups: freezed == testerGroups
          ? _value._testerGroups
          : testerGroups // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppDistributionConfigImpl implements _AppDistributionConfig {
  const _$AppDistributionConfigImpl({final List<String>? testerGroups = null})
      : _testerGroups = testerGroups;

  factory _$AppDistributionConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppDistributionConfigImplFromJson(json);

  final List<String>? _testerGroups;
  @override
  @JsonKey()
  List<String>? get testerGroups {
    final value = _testerGroups;
    if (value == null) return null;
    if (_testerGroups is EqualUnmodifiableListView) return _testerGroups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AppDistributionConfig(testerGroups: $testerGroups)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppDistributionConfigImpl &&
            const DeepCollectionEquality()
                .equals(other._testerGroups, _testerGroups));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_testerGroups));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppDistributionConfigImplCopyWith<_$AppDistributionConfigImpl>
      get copyWith => __$$AppDistributionConfigImplCopyWithImpl<
          _$AppDistributionConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppDistributionConfigImplToJson(
      this,
    );
  }
}

abstract class _AppDistributionConfig implements AppDistributionConfig {
  const factory _AppDistributionConfig({final List<String>? testerGroups}) =
      _$AppDistributionConfigImpl;

  factory _AppDistributionConfig.fromJson(Map<String, dynamic> json) =
      _$AppDistributionConfigImpl.fromJson;

  @override
  List<String>? get testerGroups;
  @override
  @JsonKey(ignore: true)
  _$$AppDistributionConfigImplCopyWith<_$AppDistributionConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}
