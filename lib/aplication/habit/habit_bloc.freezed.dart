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
    required TResult Function(Map<String, dynamic> formData) newHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData)? newHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData)? newHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewHabit value) newHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewHabit value)? newHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewHabit value)? newHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
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
abstract class _$$NewHabitImplCopyWith<$Res> {
  factory _$$NewHabitImplCopyWith(
          _$NewHabitImpl value, $Res Function(_$NewHabitImpl) then) =
      __$$NewHabitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> formData});
}

/// @nodoc
class __$$NewHabitImplCopyWithImpl<$Res>
    extends _$HabitEventCopyWithImpl<$Res, _$NewHabitImpl>
    implements _$$NewHabitImplCopyWith<$Res> {
  __$$NewHabitImplCopyWithImpl(
      _$NewHabitImpl _value, $Res Function(_$NewHabitImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formData = null,
  }) {
    return _then(_$NewHabitImpl(
      formData: null == formData
          ? _value._formData
          : formData // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$NewHabitImpl implements _NewHabit {
  const _$NewHabitImpl({required final Map<String, dynamic> formData})
      : _formData = formData;

  final Map<String, dynamic> _formData;
  @override
  Map<String, dynamic> get formData {
    if (_formData is EqualUnmodifiableMapView) return _formData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_formData);
  }

  @override
  String toString() {
    return 'HabitEvent.newHabit(formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewHabitImpl &&
            const DeepCollectionEquality().equals(other._formData, _formData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_formData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewHabitImplCopyWith<_$NewHabitImpl> get copyWith =>
      __$$NewHabitImplCopyWithImpl<_$NewHabitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, dynamic> formData) newHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
  }) {
    return newHabit(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData)? newHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
  }) {
    return newHabit?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData)? newHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
    required TResult orElse(),
  }) {
    if (newHabit != null) {
      return newHabit(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NewHabit value) newHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
  }) {
    return newHabit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewHabit value)? newHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
  }) {
    return newHabit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewHabit value)? newHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
    required TResult orElse(),
  }) {
    if (newHabit != null) {
      return newHabit(this);
    }
    return orElse();
  }
}

abstract class _NewHabit implements HabitEvent {
  const factory _NewHabit({required final Map<String, dynamic> formData}) =
      _$NewHabitImpl;

  Map<String, dynamic> get formData;
  @JsonKey(ignore: true)
  _$$NewHabitImplCopyWith<_$NewHabitImpl> get copyWith =>
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
    required TResult Function(Map<String, dynamic> formData) newHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData)? newHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData)? newHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
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
    required TResult Function(_NewHabit value) newHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewHabit value)? newHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewHabit value)? newHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
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
    required TResult Function(Map<String, dynamic> formData) newHabit,
    required TResult Function() getAll,
    required TResult Function(int id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, dynamic> formData)? newHabit,
    TResult? Function()? getAll,
    TResult? Function(int id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, dynamic> formData)? newHabit,
    TResult Function()? getAll,
    TResult Function(int id)? delete,
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
    required TResult Function(_NewHabit value) newHabit,
    required TResult Function(_GetAllHabits value) getAll,
    required TResult Function(_DeleteHabit value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NewHabit value)? newHabit,
    TResult? Function(_GetAllHabits value)? getAll,
    TResult? Function(_DeleteHabit value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NewHabit value)? newHabit,
    TResult Function(_GetAllHabits value)? getAll,
    TResult Function(_DeleteHabit value)? delete,
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
mixin _$HabitState {
  List<Habit> get habitList => throw _privateConstructorUsedError;
  bool get habitJustCreated => throw _privateConstructorUsedError;

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
  $Res call({List<Habit> habitList, bool habitJustCreated});
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
    Object? habitJustCreated = null,
  }) {
    return _then(_value.copyWith(
      habitList: null == habitList
          ? _value.habitList
          : habitList // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      habitJustCreated: null == habitJustCreated
          ? _value.habitJustCreated
          : habitJustCreated // ignore: cast_nullable_to_non_nullable
              as bool,
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
  $Res call({List<Habit> habitList, bool habitJustCreated});
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
    Object? habitJustCreated = null,
  }) {
    return _then(_$HabitStateImpl(
      habitList: null == habitList
          ? _value._habitList
          : habitList // ignore: cast_nullable_to_non_nullable
              as List<Habit>,
      habitJustCreated: null == habitJustCreated
          ? _value.habitJustCreated
          : habitJustCreated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HabitStateImpl implements _HabitState {
  const _$HabitStateImpl(
      {required final List<Habit> habitList, required this.habitJustCreated})
      : _habitList = habitList;

  final List<Habit> _habitList;
  @override
  List<Habit> get habitList {
    if (_habitList is EqualUnmodifiableListView) return _habitList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_habitList);
  }

  @override
  final bool habitJustCreated;

  @override
  String toString() {
    return 'HabitState(habitList: $habitList, habitJustCreated: $habitJustCreated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HabitStateImpl &&
            const DeepCollectionEquality()
                .equals(other._habitList, _habitList) &&
            (identical(other.habitJustCreated, habitJustCreated) ||
                other.habitJustCreated == habitJustCreated));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_habitList), habitJustCreated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HabitStateImplCopyWith<_$HabitStateImpl> get copyWith =>
      __$$HabitStateImplCopyWithImpl<_$HabitStateImpl>(this, _$identity);
}

abstract class _HabitState implements HabitState {
  const factory _HabitState(
      {required final List<Habit> habitList,
      required final bool habitJustCreated}) = _$HabitStateImpl;

  @override
  List<Habit> get habitList;
  @override
  bool get habitJustCreated;
  @override
  @JsonKey(ignore: true)
  _$$HabitStateImplCopyWith<_$HabitStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
