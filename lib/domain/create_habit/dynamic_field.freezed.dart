// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DynamicField _$DynamicFieldFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'input':
      return InputField.fromJson(json);
    case 'multiOption':
      return MultiOptionField.fromJson(json);
    case 'singleOption':
      return SingleOptionField.fromJson(json);
    case 'hour':
      return HourField.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DynamicField',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DynamicField {
  String? get type => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type) input,
    required TResult Function(String? type) multiOption,
    required TResult Function(String? type) singleOption,
    required TResult Function(String? type) hour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? type)? input,
    TResult? Function(String? type)? multiOption,
    TResult? Function(String? type)? singleOption,
    TResult? Function(String? type)? hour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type)? input,
    TResult Function(String? type)? multiOption,
    TResult Function(String? type)? singleOption,
    TResult Function(String? type)? hour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputField value) input,
    required TResult Function(MultiOptionField value) multiOption,
    required TResult Function(SingleOptionField value) singleOption,
    required TResult Function(HourField value) hour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputField value)? input,
    TResult? Function(MultiOptionField value)? multiOption,
    TResult? Function(SingleOptionField value)? singleOption,
    TResult? Function(HourField value)? hour,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputField value)? input,
    TResult Function(MultiOptionField value)? multiOption,
    TResult Function(SingleOptionField value)? singleOption,
    TResult Function(HourField value)? hour,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this DynamicField to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DynamicFieldCopyWith<DynamicField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicFieldCopyWith<$Res> {
  factory $DynamicFieldCopyWith(
          DynamicField value, $Res Function(DynamicField) then) =
      _$DynamicFieldCopyWithImpl<$Res, DynamicField>;
  @useResult
  $Res call({String? type});
}

/// @nodoc
class _$DynamicFieldCopyWithImpl<$Res, $Val extends DynamicField>
    implements $DynamicFieldCopyWith<$Res> {
  _$DynamicFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InputFieldImplCopyWith<$Res>
    implements $DynamicFieldCopyWith<$Res> {
  factory _$$InputFieldImplCopyWith(
          _$InputFieldImpl value, $Res Function(_$InputFieldImpl) then) =
      __$$InputFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type});
}

/// @nodoc
class __$$InputFieldImplCopyWithImpl<$Res>
    extends _$DynamicFieldCopyWithImpl<$Res, _$InputFieldImpl>
    implements _$$InputFieldImplCopyWith<$Res> {
  __$$InputFieldImplCopyWithImpl(
      _$InputFieldImpl _value, $Res Function(_$InputFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$InputFieldImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InputFieldImpl implements InputField {
  const _$InputFieldImpl({this.type});

  factory _$InputFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$InputFieldImplFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'DynamicField.input(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputFieldImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InputFieldImplCopyWith<_$InputFieldImpl> get copyWith =>
      __$$InputFieldImplCopyWithImpl<_$InputFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type) input,
    required TResult Function(String? type) multiOption,
    required TResult Function(String? type) singleOption,
    required TResult Function(String? type) hour,
  }) {
    return input(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? type)? input,
    TResult? Function(String? type)? multiOption,
    TResult? Function(String? type)? singleOption,
    TResult? Function(String? type)? hour,
  }) {
    return input?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type)? input,
    TResult Function(String? type)? multiOption,
    TResult Function(String? type)? singleOption,
    TResult Function(String? type)? hour,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputField value) input,
    required TResult Function(MultiOptionField value) multiOption,
    required TResult Function(SingleOptionField value) singleOption,
    required TResult Function(HourField value) hour,
  }) {
    return input(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputField value)? input,
    TResult? Function(MultiOptionField value)? multiOption,
    TResult? Function(SingleOptionField value)? singleOption,
    TResult? Function(HourField value)? hour,
  }) {
    return input?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputField value)? input,
    TResult Function(MultiOptionField value)? multiOption,
    TResult Function(SingleOptionField value)? singleOption,
    TResult Function(HourField value)? hour,
    required TResult orElse(),
  }) {
    if (input != null) {
      return input(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InputFieldImplToJson(
      this,
    );
  }
}

abstract class InputField implements DynamicField {
  const factory InputField({final String? type}) = _$InputFieldImpl;

  factory InputField.fromJson(Map<String, dynamic> json) =
      _$InputFieldImpl.fromJson;

  @override
  String? get type;

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InputFieldImplCopyWith<_$InputFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiOptionFieldImplCopyWith<$Res>
    implements $DynamicFieldCopyWith<$Res> {
  factory _$$MultiOptionFieldImplCopyWith(_$MultiOptionFieldImpl value,
          $Res Function(_$MultiOptionFieldImpl) then) =
      __$$MultiOptionFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type});
}

/// @nodoc
class __$$MultiOptionFieldImplCopyWithImpl<$Res>
    extends _$DynamicFieldCopyWithImpl<$Res, _$MultiOptionFieldImpl>
    implements _$$MultiOptionFieldImplCopyWith<$Res> {
  __$$MultiOptionFieldImplCopyWithImpl(_$MultiOptionFieldImpl _value,
      $Res Function(_$MultiOptionFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$MultiOptionFieldImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiOptionFieldImpl implements MultiOptionField {
  const _$MultiOptionFieldImpl({this.type});

  factory _$MultiOptionFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiOptionFieldImplFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'DynamicField.multiOption(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiOptionFieldImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiOptionFieldImplCopyWith<_$MultiOptionFieldImpl> get copyWith =>
      __$$MultiOptionFieldImplCopyWithImpl<_$MultiOptionFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type) input,
    required TResult Function(String? type) multiOption,
    required TResult Function(String? type) singleOption,
    required TResult Function(String? type) hour,
  }) {
    return multiOption(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? type)? input,
    TResult? Function(String? type)? multiOption,
    TResult? Function(String? type)? singleOption,
    TResult? Function(String? type)? hour,
  }) {
    return multiOption?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type)? input,
    TResult Function(String? type)? multiOption,
    TResult Function(String? type)? singleOption,
    TResult Function(String? type)? hour,
    required TResult orElse(),
  }) {
    if (multiOption != null) {
      return multiOption(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputField value) input,
    required TResult Function(MultiOptionField value) multiOption,
    required TResult Function(SingleOptionField value) singleOption,
    required TResult Function(HourField value) hour,
  }) {
    return multiOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputField value)? input,
    TResult? Function(MultiOptionField value)? multiOption,
    TResult? Function(SingleOptionField value)? singleOption,
    TResult? Function(HourField value)? hour,
  }) {
    return multiOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputField value)? input,
    TResult Function(MultiOptionField value)? multiOption,
    TResult Function(SingleOptionField value)? singleOption,
    TResult Function(HourField value)? hour,
    required TResult orElse(),
  }) {
    if (multiOption != null) {
      return multiOption(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiOptionFieldImplToJson(
      this,
    );
  }
}

abstract class MultiOptionField implements DynamicField {
  const factory MultiOptionField({final String? type}) = _$MultiOptionFieldImpl;

  factory MultiOptionField.fromJson(Map<String, dynamic> json) =
      _$MultiOptionFieldImpl.fromJson;

  @override
  String? get type;

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiOptionFieldImplCopyWith<_$MultiOptionFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SingleOptionFieldImplCopyWith<$Res>
    implements $DynamicFieldCopyWith<$Res> {
  factory _$$SingleOptionFieldImplCopyWith(_$SingleOptionFieldImpl value,
          $Res Function(_$SingleOptionFieldImpl) then) =
      __$$SingleOptionFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type});
}

/// @nodoc
class __$$SingleOptionFieldImplCopyWithImpl<$Res>
    extends _$DynamicFieldCopyWithImpl<$Res, _$SingleOptionFieldImpl>
    implements _$$SingleOptionFieldImplCopyWith<$Res> {
  __$$SingleOptionFieldImplCopyWithImpl(_$SingleOptionFieldImpl _value,
      $Res Function(_$SingleOptionFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$SingleOptionFieldImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleOptionFieldImpl implements SingleOptionField {
  const _$SingleOptionFieldImpl({this.type});

  factory _$SingleOptionFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleOptionFieldImplFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'DynamicField.singleOption(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleOptionFieldImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleOptionFieldImplCopyWith<_$SingleOptionFieldImpl> get copyWith =>
      __$$SingleOptionFieldImplCopyWithImpl<_$SingleOptionFieldImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type) input,
    required TResult Function(String? type) multiOption,
    required TResult Function(String? type) singleOption,
    required TResult Function(String? type) hour,
  }) {
    return singleOption(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? type)? input,
    TResult? Function(String? type)? multiOption,
    TResult? Function(String? type)? singleOption,
    TResult? Function(String? type)? hour,
  }) {
    return singleOption?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type)? input,
    TResult Function(String? type)? multiOption,
    TResult Function(String? type)? singleOption,
    TResult Function(String? type)? hour,
    required TResult orElse(),
  }) {
    if (singleOption != null) {
      return singleOption(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputField value) input,
    required TResult Function(MultiOptionField value) multiOption,
    required TResult Function(SingleOptionField value) singleOption,
    required TResult Function(HourField value) hour,
  }) {
    return singleOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputField value)? input,
    TResult? Function(MultiOptionField value)? multiOption,
    TResult? Function(SingleOptionField value)? singleOption,
    TResult? Function(HourField value)? hour,
  }) {
    return singleOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputField value)? input,
    TResult Function(MultiOptionField value)? multiOption,
    TResult Function(SingleOptionField value)? singleOption,
    TResult Function(HourField value)? hour,
    required TResult orElse(),
  }) {
    if (singleOption != null) {
      return singleOption(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleOptionFieldImplToJson(
      this,
    );
  }
}

abstract class SingleOptionField implements DynamicField {
  const factory SingleOptionField({final String? type}) =
      _$SingleOptionFieldImpl;

  factory SingleOptionField.fromJson(Map<String, dynamic> json) =
      _$SingleOptionFieldImpl.fromJson;

  @override
  String? get type;

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleOptionFieldImplCopyWith<_$SingleOptionFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HourFieldImplCopyWith<$Res>
    implements $DynamicFieldCopyWith<$Res> {
  factory _$$HourFieldImplCopyWith(
          _$HourFieldImpl value, $Res Function(_$HourFieldImpl) then) =
      __$$HourFieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type});
}

/// @nodoc
class __$$HourFieldImplCopyWithImpl<$Res>
    extends _$DynamicFieldCopyWithImpl<$Res, _$HourFieldImpl>
    implements _$$HourFieldImplCopyWith<$Res> {
  __$$HourFieldImplCopyWithImpl(
      _$HourFieldImpl _value, $Res Function(_$HourFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
  }) {
    return _then(_$HourFieldImpl(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HourFieldImpl implements HourField {
  const _$HourFieldImpl({this.type});

  factory _$HourFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$HourFieldImplFromJson(json);

  @override
  final String? type;

  @override
  String toString() {
    return 'DynamicField.hour(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HourFieldImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HourFieldImplCopyWith<_$HourFieldImpl> get copyWith =>
      __$$HourFieldImplCopyWithImpl<_$HourFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? type) input,
    required TResult Function(String? type) multiOption,
    required TResult Function(String? type) singleOption,
    required TResult Function(String? type) hour,
  }) {
    return hour(type);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? type)? input,
    TResult? Function(String? type)? multiOption,
    TResult? Function(String? type)? singleOption,
    TResult? Function(String? type)? hour,
  }) {
    return hour?.call(type);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? type)? input,
    TResult Function(String? type)? multiOption,
    TResult Function(String? type)? singleOption,
    TResult Function(String? type)? hour,
    required TResult orElse(),
  }) {
    if (hour != null) {
      return hour(type);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputField value) input,
    required TResult Function(MultiOptionField value) multiOption,
    required TResult Function(SingleOptionField value) singleOption,
    required TResult Function(HourField value) hour,
  }) {
    return hour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputField value)? input,
    TResult? Function(MultiOptionField value)? multiOption,
    TResult? Function(SingleOptionField value)? singleOption,
    TResult? Function(HourField value)? hour,
  }) {
    return hour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputField value)? input,
    TResult Function(MultiOptionField value)? multiOption,
    TResult Function(SingleOptionField value)? singleOption,
    TResult Function(HourField value)? hour,
    required TResult orElse(),
  }) {
    if (hour != null) {
      return hour(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$HourFieldImplToJson(
      this,
    );
  }
}

abstract class HourField implements DynamicField {
  const factory HourField({final String? type}) = _$HourFieldImpl;

  factory HourField.fromJson(Map<String, dynamic> json) =
      _$HourFieldImpl.fromJson;

  @override
  String? get type;

  /// Create a copy of DynamicField
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HourFieldImplCopyWith<_$HourFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
