import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:today_and_tomorrow/domain/create_habit/form_habit.dart';
import 'package:today_and_tomorrow/domain/create_habit/i_create_habit_facade.dart';

part 'create_event.dart';
part 'create_state.dart';
part 'create_bloc.freezed.dart';

@Injectable()
class CreateBloc extends Bloc<CreateEvent, CreateState> {
  CreateBloc({required ICreateHabitFacade facade})
      : super(CreateState.initial()) {
    on<_GetSteps>((event, emit) {
      try {
        emit(state.copyWith(isLoading: true));
        final formSteps = facade.getSteps();
        emit(state.copyWith(formSteps: formSteps, isLoading: false));
      } catch (e) {}
    });
    on<_NextStep>((event, emit) async {});
  }
}
