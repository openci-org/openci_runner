// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WorkflowModelImpl _$$WorkflowModelImplFromJson(Map<String, dynamic> json) =>
    _$WorkflowModelImpl(
      firebase:
          WorkflowFirebase.fromJson(json['firebase'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$WorkflowModelImplToJson(_$WorkflowModelImpl instance) =>
    <String, dynamic>{
      'firebase': instance.firebase,
    };

_$WorkflowFirebaseImpl _$$WorkflowFirebaseImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkflowFirebaseImpl(
      appIdIos: json['appIdIos'] as String? ?? null,
      serviceAccountJson: json['serviceAccountJson'] as String? ?? null,
    );

Map<String, dynamic> _$$WorkflowFirebaseImplToJson(
        _$WorkflowFirebaseImpl instance) =>
    <String, dynamic>{
      'appIdIos': instance.appIdIos,
      'serviceAccountJson': instance.serviceAccountJson,
    };
