part of 'create_bloc.dart';

@freezed
class CreateState with _$CreateState {
  const factory CreateState({
    required FormHabit? formSteps,
    required bool isLoading,
    required int currentStep,
  }) = _CreateState;

  factory CreateState.initial() => const CreateState(
        isLoading: false,
        currentStep: 0,
        formSteps: null,
      );
}
