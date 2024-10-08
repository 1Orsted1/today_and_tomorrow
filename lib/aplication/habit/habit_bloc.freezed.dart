// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'habit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HabitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData, int? id) saveHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
    required TResult Function(Habit updatedHabit) updateHabit,
    required TResult Function(Habit completeHabit) completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
    TResult? Function(Habit updatedHabit)? updateHabit,
    TResult? Function(Habit completeHabit)? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    TResult Function(Habit updatedHabit)? updateHabit,
    TResult Function(Habit completeHabit)? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveHabit value) saveHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
    required TResult Function(_UpdateHabit value) updateHabit,
    required TResult Function(_CompleteTask value) completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveHabit value)? saveHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
    TResult? Function(_UpdateHabit value)? updateHabit,
    TResult? Function(_CompleteTask value)? completeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveHabit value)? saveHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    TResult Function(_UpdateHabit value)? updateHabit,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitEventCopyWith<$Res> {
  factory $HabitEventCopyWith(
          HabitEvent value, $Res Function(HabitEvent) then) =
      _$HabitEventCopyWithImpl<$Res, HabitEvent>;
}

/// @nodoc
class _$HabitEventCopyWithImpl<$Res, $Val extends HabitEvent>
    implements $HabitEventCopyWith<$Res> {
  _$HabitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SaveHabitImplCopyWith<$Res> {
  factory _$$SaveHabitImplCopyWith(
          _$SaveHabitImpl value, $Res Function(_$SaveHabitImpl) then) =
      __$$SaveHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> formData, int? id});
}

/// @nodoc
class __$$SaveHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$SaveHabitImpl>
    implements _$$SaveHabitImplCopyWith<$Res> {
  __$$SaveHabitImplCopyWithImpl(
      _$SaveHabitImpl _value, $Res Function(_$SaveHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
    Object? id = freezed,
  }) {
    return _then(_$SaveHabitImpl(
      formData: null == formData
          ? _value._formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SaveHabitImpl implements _SaveHabit {
  const _$SaveHabitImpl({required final Map<String, dynamic> formData, this.id})
      : _formData = formData;

  final Map<String, dynamic> _formData;
  @override
  Map<String, dynamic> get formData {
    if (_formData is EqualUnmodifiableMapView) return _formData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_formData);
  }

  @override
  final int? id;

  @override
  String toString() {
    return 'HabitEvent.saveHabit(formData: $formData, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveHabitImpl &&
            const DeepCollectionEquality().equals(other._formData, _formData) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_formData), id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveHabitImplCopyWith<_$SaveHabitImpl> get copyWith =>
      __$$SaveHabitImplCopyWithImpl<_$SaveHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData, int? id) saveHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
    required TResult Function(Habit updatedHabit) updateHabit,
    required TResult Function(Habit completeHabit) completeTask,
  }) {
    return saveHabit(formData, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
    TResult? Function(Habit updatedHabit)? updateHabit,
    TResult? Function(Habit completeHabit)? completeTask,
  }) {
    return saveHabit?.call(formData, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    TResult Function(Habit updatedHabit)? updateHabit,
    TResult Function(Habit completeHabit)? completeTask,
    required TResult orElse(),
  }) {
    if (saveHabit != null) {
      return saveHabit(formData, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveHabit value) saveHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
    required TResult Function(_UpdateHabit value) updateHabit,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return saveHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveHabit value)? saveHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
    TResult? Function(_UpdateHabit value)? updateHabit,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return saveHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveHabit value)? saveHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    TResult Function(_UpdateHabit value)? updateHabit,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (saveHabit != null) {
      return saveHabit(this);
    }
    return orElse();
  }
}

abstract class _SaveHabit implements HabitEvent {
  const factory _SaveHabit(
      {required final Map<String, dynamic> formData,
      final int? id}) = _$SaveHabitImpl;

  Map<String, dynamic> get formData;
  int? get id;
  @JsonKey(ignore: true)
  _$$SaveHabitImplCopyWith<_$SaveHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllHabitsImplCopyWith<$Res> {
  factory _$$GetAllHabitsImplCopyWith(
          _$GetAllHabitsImpl value, $Res Function(_$GetAllHabitsImpl) then) =
      __$$GetAllHabitsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllHabitsImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$GetAllHabitsImpl>
    implements _$$GetAllHabitsImplCopyWith<$Res> {
  __$$GetAllHabitsImplCopyWithImpl(
      _$GetAllHabitsImpl _value, $Res Function(_$GetAllHabitsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllHabitsImpl implements _GetAllHabits {
  const _$GetAllHabitsImpl();

  @override
  String toString() {
    return 'HabitEvent.getAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllHabitsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData, int? id) saveHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
    required TResult Function(Habit updatedHabit) updateHabit,
    required TResult Function(Habit completeHabit) completeTask,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
    TResult? Function(Habit updatedHabit)? updateHabit,
    TResult? Function(Habit completeHabit)? completeTask,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    TResult Function(Habit updatedHabit)? updateHabit,
    TResult Function(Habit completeHabit)? completeTask,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveHabit value) saveHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
    required TResult Function(_UpdateHabit value) updateHabit,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveHabit value)? saveHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
    TResult? Function(_UpdateHabit value)? updateHabit,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveHabit value)? saveHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    TResult Function(_UpdateHabit value)? updateHabit,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class _GetAllHabits implements HabitEvent {
  const factory _GetAllHabits() = _$GetAllHabitsImpl;
}

/// @nodoc
abstract class _$$DeleteHabitImplCopyWith<$Res> {
  factory _$$DeleteHabitImplCopyWith(
          _$DeleteHabitImpl value, $Res Function(_$DeleteHabitImpl) then) =
      __$$DeleteHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$DeleteHabitImpl>
    implements _$$DeleteHabitImplCopyWith<$Res> {
  __$$DeleteHabitImplCopyWithImpl(
      _$DeleteHabitImpl _value, $Res Function(_$DeleteHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteHabitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteHabitImpl implements _DeleteHabit {
  const _$DeleteHabitImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HabitEvent.delete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteHabitImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteHabitImplCopyWith<_$DeleteHabitImpl> get copyWith =>
      __$$DeleteHabitImplCopyWithImpl<_$DeleteHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData, int? id) saveHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
    required TResult Function(Habit updatedHabit) updateHabit,
    required TResult Function(Habit completeHabit) completeTask,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
    TResult? Function(Habit updatedHabit)? updateHabit,
    TResult? Function(Habit completeHabit)? completeTask,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    TResult Function(Habit updatedHabit)? updateHabit,
    TResult Function(Habit completeHabit)? completeTask,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveHabit value) saveHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
    required TResult Function(_UpdateHabit value) updateHabit,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveHabit value)? saveHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
    TResult? Function(_UpdateHabit value)? updateHabit,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveHabit value)? saveHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    TResult Function(_UpdateHabit value)? updateHabit,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _DeleteHabit implements HabitEvent {
  const factory _DeleteHabit({required final int id}) = _$DeleteHabitImpl;

  int get id;
  @JsonKey(ignore: true)
  _$$DeleteHabitImplCopyWith<_$DeleteHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateHabitImplCopyWith<$Res> {
  factory _$$UpdateHabitImplCopyWith(
          _$UpdateHabitImpl value, $Res Function(_$UpdateHabitImpl) then) =
      __$$UpdateHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Habit updatedHabit});
}

/// @nodoc
class __$$UpdateHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$UpdateHabitImpl>
    implements _$$UpdateHabitImplCopyWith<$Res> {
  __$$UpdateHabitImplCopyWithImpl(
      _$UpdateHabitImpl _value, $Res Function(_$UpdateHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updatedHabit = null,
  }) {
    return _then(_$UpdateHabitImpl(
      updatedHabit: null == updatedHabit
          ? _value.updatedHabit
          : updatedHabit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$UpdateHabitImpl implements _UpdateHabit {
  const _$UpdateHabitImpl({required this.updatedHabit});

  @override
  final Habit updatedHabit;

  @override
  String toString() {
    return 'HabitEvent.updateHabit(updatedHabit: $updatedHabit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateHabitImpl &&
            (identical(other.updatedHabit, updatedHabit) ||
                other.updatedHabit == updatedHabit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updatedHabit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateHabitImplCopyWith<_$UpdateHabitImpl> get copyWith =>
      __$$UpdateHabitImplCopyWithImpl<_$UpdateHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData, int? id) saveHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
    required TResult Function(Habit updatedHabit) updateHabit,
    required TResult Function(Habit completeHabit) completeTask,
  }) {
    return updateHabit(updatedHabit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
    TResult? Function(Habit updatedHabit)? updateHabit,
    TResult? Function(Habit completeHabit)? completeTask,
  }) {
    return updateHabit?.call(updatedHabit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    TResult Function(Habit updatedHabit)? updateHabit,
    TResult Function(Habit completeHabit)? completeTask,
    required TResult orElse(),
  }) {
    if (updateHabit != null) {
      return updateHabit(updatedHabit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveHabit value) saveHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
    required TResult Function(_UpdateHabit value) updateHabit,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return updateHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveHabit value)? saveHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
    TResult? Function(_UpdateHabit value)? updateHabit,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return updateHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveHabit value)? saveHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    TResult Function(_UpdateHabit value)? updateHabit,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (updateHabit != null) {
      return updateHabit(this);
    }
    return orElse();
  }
}

abstract class _UpdateHabit implements HabitEvent {
  const factory _UpdateHabit({required final Habit updatedHabit}) =
      _$UpdateHabitImpl;

  Habit get updatedHabit;
  @JsonKey(ignore: true)
  _$$UpdateHabitImplCopyWith<_$UpdateHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompleteTaskImplCopyWith<$Res> {
  factory _$$CompleteTaskImplCopyWith(
          _$CompleteTaskImpl value, $Res Function(_$CompleteTaskImpl) then) =
      __$$CompleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Habit completeHabit});
}

/// @nodoc
class __$$CompleteTaskImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$CompleteTaskImpl>
    implements _$$CompleteTaskImplCopyWith<$Res> {
  __$$CompleteTaskImplCopyWithImpl(
      _$CompleteTaskImpl _value, $Res Function(_$CompleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completeHabit = null,
  }) {
    return _then(_$CompleteTaskImpl(
      completeHabit: null == completeHabit
          ? _value.completeHabit
          : completeHabit // ignore: cast_nullable_to_non_nullable
              as Habit,
    ));
  }
}

/// @nodoc

class _$CompleteTaskImpl implements _CompleteTask {
  const _$CompleteTaskImpl({required this.completeHabit});

  @override
  final Habit completeHabit;

  @override
  String toString() {
    return 'HabitEvent.completeTask(completeHabit: $completeHabit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompleteTaskImpl &&
            (identical(other.completeHabit, completeHabit) ||
                other.completeHabit == completeHabit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, completeHabit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      __$$CompleteTaskImplCopyWithImpl<_$CompleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData, int? id) saveHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
    required TResult Function(Habit updatedHabit) updateHabit,
    required TResult Function(Habit completeHabit) completeTask,
  }) {
    return completeTask(completeHabit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
    TResult? Function(Habit updatedHabit)? updateHabit,
    TResult? Function(Habit completeHabit)? completeTask,
  }) {
    return completeTask?.call(completeHabit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData, int? id)? saveHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    TResult Function(Habit updatedHabit)? updateHabit,
    TResult Function(Habit completeHabit)? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(completeHabit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveHabit value) saveHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
    required TResult Function(_UpdateHabit value) updateHabit,
    required TResult Function(_CompleteTask value) completeTask,
  }) {
    return completeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveHabit value)? saveHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
    TResult? Function(_UpdateHabit value)? updateHabit,
    TResult? Function(_CompleteTask value)? completeTask,
  }) {
    return completeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveHabit value)? saveHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    TResult Function(_UpdateHabit value)? updateHabit,
    TResult Function(_CompleteTask value)? completeTask,
    required TResult orElse(),
  }) {
    if (completeTask != null) {
      return completeTask(this);
    }
    return orElse();
  }
}

abstract class _CompleteTask implements HabitEvent {
  const factory _CompleteTask({required final Habit completeHabit}) =
      _$CompleteTaskImpl;

  Habit get completeHabit;
  @JsonKey(ignore: true)
  _$$CompleteTaskImplCopyWith<_$CompleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HabitState {
  List<Habit> get habitList => throw _privateConstructorUsedError;
  bool get operationCompleted => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Habit? get editableHabit => throw _privateConstructorUsedError;
  List<String> get waitingToComplete => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HabitStateCopyWith<HabitState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HabitStateCopyWith<$Res> {
  factory $HabitStateCopyWith(
          HabitState value, $Res Function(HabitState) then) =
      _$HabitStateCopyWithImpl<$Res, HabitState>;
  @useResult
  $Res call(
      {List<Habit> habitList,
      bool operationCompleted,
      bool isLoading,
      Habit? editableHabit,
      List<String> waitingToComplete});
}

/// @nodoc
class _$HabitStateCopyWithImpl<$Res, $Val extends HabitState>
    implements $HabitStateCopyWith<$Res> {
  _$HabitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitList = null,
    Object? operationCompleted = null,
    Object? isLoading = null,
    Object? editableHabit = freezed,
    Object? waitingToComplete = null,
  }) {
    return _then(_value.copyWith(
      habitList: null == habitList
          ? _value.habitList
          : habitList // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      operationCompleted: null == operationCompleted
          ? _value.operationCompleted
          : operationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      editableHabit: freezed == editableHabit
          ? _value.editableHabit
          : editableHabit // ignore: cast_nullable_to_non_nullable
              as Habit?,
      waitingToComplete: null == waitingToComplete
          ? _value.waitingToComplete
          : waitingToComplete // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HabitStateImplCopyWith<$Res>
    implements $HabitStateCopyWith<$Res> {
  factory _$$HabitStateImplCopyWith(
          _$HabitStateImpl value, $Res Function(_$HabitStateImpl) then) =
      __$$HabitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Habit> habitList,
      bool operationCompleted,
      bool isLoading,
      Habit? editableHabit,
      List<String> waitingToComplete});
}

/// @nodoc
class __$$HabitStateImplCopyWithImpl<$Res>
    extends _$HabitStateCopyWithImpl<$Res, _$HabitStateImpl>
    implements _$$HabitStateImplCopyWith<$Res> {
  __$$HabitStateImplCopyWithImpl(
      _$HabitStateImpl _value, $Res Function(_$HabitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? habitList = null,
    Object? operationCompleted = null,
    Object? isLoading = null,
    Object? editableHabit = freezed,
    Object? waitingToComplete = null,
  }) {
    return _then(_$HabitStateImpl(
      habitList: null == habitList
          ? _value._habitList
          : habitList // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      operationCompleted: null == operationCompleted
          ? _value.operationCompleted
          : operationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      editableHabit: freezed == editableHabit
          ? _value.editableHabit
          : editableHabit // ignore: cast_nullable_to_non_nullable
              as Habit?,
      waitingToComplete: null == waitingToComplete
          ? _value._waitingToComplete
          : waitingToComplete // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$HabitStateImpl implements _HabitState {
  const _$HabitStateImpl(
      {required final List<Habit> habitList,
      required this.operationCompleted,
      required this.isLoading,
      this.editableHabit,
      required final List<String> waitingToComplete})
      : _habitList = habitList,
        _waitingToComplete = waitingToComplete;

  final List<Habit> _habitList;
  @override
  List<Habit> get habitList {
    if (_habitList is EqualUnmodifiableListView) return _habitList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habitList);
  }

  @override
  final bool operationCompleted;
  @override
  final bool isLoading;
  @override
  final Habit? editableHabit;
  final List<String> _waitingToComplete;
  @override
  List<String> get waitingToComplete {
    if (_waitingToComplete is EqualUnmodifiableListView)
      return _waitingToComplete;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitingToComplete);
  }

  @override
  String toString() {
    return 'HabitState(habitList: $habitList, operationCompleted: $operationCompleted, isLoading: $isLoading, editableHabit: $editableHabit, waitingToComplete: $waitingToComplete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._habitList, _habitList) &&
            (identical(other.operationCompleted, operationCompleted) ||
                other.operationCompleted == operationCompleted) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.editableHabit, editableHabit) ||
                other.editableHabit == editableHabit) &&
            const DeepCollectionEquality()
                .equals(other._waitingToComplete, _waitingToComplete));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_habitList),
      operationCompleted,
      isLoading,
      editableHabit,
      const DeepCollectionEquality().hash(_waitingToComplete));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitStateImplCopyWith<_$HabitStateImpl> get copyWith =>
      __$$HabitStateImplCopyWithImpl<_$HabitStateImpl>(this, _$identity);
}

abstract class _HabitState implements HabitState {
  const factory _HabitState(
      {required final List<Habit> habitList,
      required final bool operationCompleted,
      required final bool isLoading,
      final Habit? editableHabit,
      required final List<String> waitingToComplete}) = _$HabitStateImpl;

  @override
  List<Habit> get habitList;
  @override
  bool get operationCompleted;
  @override
  bool get isLoading;
  @override
  Habit? get editableHabit;
  @override
  List<String> get waitingToComplete;
  @override
  @JsonKey(ignore: true)
  _$$HabitStateImplCopyWith<_$HabitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
