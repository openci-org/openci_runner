import 'package:freezed_annotation/freezed_annotation.dart';

part 'workflow_model.freezed.dart';
part 'workflow_model.g.dart';

@freezed
class WorkflowModel with _$WorkflowModel {
  const factory WorkflowModel({
    required WorkflowFirebase firebase,
  }) = _WorkflowModel;
  factory WorkflowModel.fromJson(Map<String, Object?> json) =>
      _$WorkflowModelFromJson(json);
}

@freezed
class WorkflowFirebase with _$WorkflowFirebase {
  const factory WorkflowFirebase({
    @Default(null) String? appIdIos,
    @Default(null) String? serviceAccountJson,
  }) = _WorkflowFirebase;
  factory WorkflowFirebase.fromJson(Map<String, Object?> json) =>
      _$WorkflowFirebaseFromJson(json);
}
