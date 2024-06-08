part of 'template_management_bloc.dart';

@freezed
class TemplateManagementState with _$TemplateManagementState {
  factory TemplateManagementState({
    WorkoutTemplate? template,
    @Default(BlocStatus.idle) BlocStatus status,
    String? errorMessage,
  }) = _TemplateManagementState;
}
