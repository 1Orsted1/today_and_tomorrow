// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_habit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FormHabit _$FormHabitFromJson(Map<String, dynamic> json) {
  return _FormHabit.fromJson(json);
}

/// @nodoc
mixin _$FormHabit {
  List<DynamicField>? get fields => throw _privateConstructorUsedError;

  /// Serializes this FormHabit to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FormHabit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FormHabitCopyWith<FormHabit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormHabitCopyWith<$Res> {
  factory $FormHabitCopyWith(FormHabit value, $Res Function(FormHabit) then) =
      _$FormHabitCopyWithImpl<$Res, FormHabit>;
  @useResult
  $Res call({List<DynamicField>? fields});
}

/// @nodoc
class _$FormHabitCopyWithImpl<$Res, $Val extends FormHabit>
    implements $FormHabitCopyWith<$Res> {
  _$FormHabitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FormHabit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<DynamicField>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormHabitImplCopyWith<$Res>
    implements $FormHabitCopyWith<$Res> {
  factory _$$FormHabitImplCopyWith(
          _$FormHabitImpl value, $Res Function(_$FormHabitImpl) then) =
      __$$FormHabitImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<DynamicField>? fields});
}

/// @nodoc
class __$$FormHabitImplCopyWithImpl<$Res>
    extends _$FormHabitCopyWithImpl<$Res, _$FormHabitImpl>
    implements _$$FormHabitImplCopyWith<$Res> {
  __$$FormHabitImplCopyWithImpl(
      _$FormHabitImpl _value, $Res Function(_$FormHabitImpl) _then)
      : super(_value, _then);

  /// Create a copy of FormHabit
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_$FormHabitImpl(
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<DynamicField>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormHabitImpl implements _FormHabit {
  const _$FormHabitImpl({final List<DynamicField>? fields}) : _fields = fields;

  factory _$FormHabitImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormHabitImplFromJson(json);

  final List<DynamicField>? _fields;
  @override
  List<DynamicField>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FormHabit(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormHabitImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  /// Create a copy of FormHabit
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FormHabitImplCopyWith<_$FormHabitImpl> get copyWith =>
      __$$FormHabitImplCopyWithImpl<_$FormHabitImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FormHabitImplToJson(
      this,
    );
  }
}

abstract class _FormHabit implements FormHabit {
  const factory _FormHabit({final List<DynamicField>? fields}) =
      _$FormHabitImpl;

  factory _FormHabit.fromJson(Map<String, dynamic> json) =
      _$FormHabitImpl.fromJson;

  @override
  List<DynamicField>? get fields;

  /// Create a copy of FormHabit
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FormHabitImplCopyWith<_$FormHabitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
