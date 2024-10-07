part of 'create_bloc.dart';

@freezed
class CreateEvent with _$CreateEvent {
  const factory CreateEvent.getSteps() = _GetSteps;
  const factory CreateEvent.nextStep() = _NextStep;
}
