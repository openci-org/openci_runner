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
  WorkflowFirebase get firebase => throw _privateConstructorUsedError;

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
  $Res call({WorkflowFirebase firebase});

  $WorkflowFirebaseCopyWith<$Res> get firebase;
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
  }) {
    return _then(_value.copyWith(
      firebase: null == firebase
          ? _value.firebase
          : firebase // ignore: cast_nullable_to_non_nullable
              as WorkflowFirebase,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WorkflowFirebaseCopyWith<$Res> get firebase {
    return $WorkflowFirebaseCopyWith<$Res>(_value.firebase, (value) {
      return _then(_value.copyWith(firebase: value) as $Val);
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
  $Res call({WorkflowFirebase firebase});

  @override
  $WorkflowFirebaseCopyWith<$Res> get firebase;
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
  }) {
    return _then(_$WorkflowModelImpl(
      firebase: null == firebase
          ? _value.firebase
          : firebase // ignore: cast_nullable_to_non_nullable
              as WorkflowFirebase,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkflowModelImpl implements _WorkflowModel {
  const _$WorkflowModelImpl({required this.firebase});

  factory _$WorkflowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowModelImplFromJson(json);

  @override
  final WorkflowFirebase firebase;

  @override
  String toString() {
    return 'WorkflowModel(firebase: $firebase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowModelImpl &&
            (identical(other.firebase, firebase) ||
                other.firebase == firebase));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, firebase);

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
  const factory _WorkflowModel({required final WorkflowFirebase firebase}) =
      _$WorkflowModelImpl;

  factory _WorkflowModel.fromJson(Map<String, dynamic> json) =
      _$WorkflowModelImpl.fromJson;

  @override
  WorkflowFirebase get firebase;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowModelImplCopyWith<_$WorkflowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkflowFirebase _$WorkflowFirebaseFromJson(Map<String, dynamic> json) {
  return _WorkflowFirebase.fromJson(json);
}

/// @nodoc
mixin _$WorkflowFirebase {
  String? get appIdIos => throw _privateConstructorUsedError;
  String? get serviceAccountJson => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkflowFirebaseCopyWith<WorkflowFirebase> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkflowFirebaseCopyWith<$Res> {
  factory $WorkflowFirebaseCopyWith(
          WorkflowFirebase value, $Res Function(WorkflowFirebase) then) =
      _$WorkflowFirebaseCopyWithImpl<$Res, WorkflowFirebase>;
  @useResult
  $Res call({String? appIdIos, String? serviceAccountJson});
}

/// @nodoc
class _$WorkflowFirebaseCopyWithImpl<$Res, $Val extends WorkflowFirebase>
    implements $WorkflowFirebaseCopyWith<$Res> {
  _$WorkflowFirebaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appIdIos = freezed,
    Object? serviceAccountJson = freezed,
  }) {
    return _then(_value.copyWith(
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
}

/// @nodoc
abstract class _$$WorkflowFirebaseImplCopyWith<$Res>
    implements $WorkflowFirebaseCopyWith<$Res> {
  factory _$$WorkflowFirebaseImplCopyWith(_$WorkflowFirebaseImpl value,
          $Res Function(_$WorkflowFirebaseImpl) then) =
      __$$WorkflowFirebaseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? appIdIos, String? serviceAccountJson});
}

/// @nodoc
class __$$WorkflowFirebaseImplCopyWithImpl<$Res>
    extends _$WorkflowFirebaseCopyWithImpl<$Res, _$WorkflowFirebaseImpl>
    implements _$$WorkflowFirebaseImplCopyWith<$Res> {
  __$$WorkflowFirebaseImplCopyWithImpl(_$WorkflowFirebaseImpl _value,
      $Res Function(_$WorkflowFirebaseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appIdIos = freezed,
    Object? serviceAccountJson = freezed,
  }) {
    return _then(_$WorkflowFirebaseImpl(
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
class _$WorkflowFirebaseImpl implements _WorkflowFirebase {
  const _$WorkflowFirebaseImpl(
      {this.appIdIos = null, this.serviceAccountJson = null});

  factory _$WorkflowFirebaseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkflowFirebaseImplFromJson(json);

  @override
  @JsonKey()
  final String? appIdIos;
  @override
  @JsonKey()
  final String? serviceAccountJson;

  @override
  String toString() {
    return 'WorkflowFirebase(appIdIos: $appIdIos, serviceAccountJson: $serviceAccountJson)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkflowFirebaseImpl &&
            (identical(other.appIdIos, appIdIos) ||
                other.appIdIos == appIdIos) &&
            (identical(other.serviceAccountJson, serviceAccountJson) ||
                other.serviceAccountJson == serviceAccountJson));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, appIdIos, serviceAccountJson);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkflowFirebaseImplCopyWith<_$WorkflowFirebaseImpl> get copyWith =>
      __$$WorkflowFirebaseImplCopyWithImpl<_$WorkflowFirebaseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkflowFirebaseImplToJson(
      this,
    );
  }
}

abstract class _WorkflowFirebase implements WorkflowFirebase {
  const factory _WorkflowFirebase(
      {final String? appIdIos,
      final String? serviceAccountJson}) = _$WorkflowFirebaseImpl;

  factory _WorkflowFirebase.fromJson(Map<String, dynamic> json) =
      _$WorkflowFirebaseImpl.fromJson;

  @override
  String? get appIdIos;
  @override
  String? get serviceAccountJson;
  @override
  @JsonKey(ignore: true)
  _$$WorkflowFirebaseImplCopyWith<_$WorkflowFirebaseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
