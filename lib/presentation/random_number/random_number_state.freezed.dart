// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_number_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RandomNumberState _$RandomNumberStateFromJson(Map<String, dynamic> json) {
  return _RandomNumberState.fromJson(json);
}

/// @nodoc
mixin _$RandomNumberState {
  int? get currentNumber => throw _privateConstructorUsedError;
  RandomNumber? get randomNumber => throw _privateConstructorUsedError;
  bool get isCreating => throw _privateConstructorUsedError;

  /// Serializes this RandomNumberState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomNumberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomNumberStateCopyWith<RandomNumberState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomNumberStateCopyWith<$Res> {
  factory $RandomNumberStateCopyWith(
          RandomNumberState value, $Res Function(RandomNumberState) then) =
      _$RandomNumberStateCopyWithImpl<$Res, RandomNumberState>;
  @useResult
  $Res call({int? currentNumber, RandomNumber? randomNumber, bool isCreating});

  $RandomNumberCopyWith<$Res>? get randomNumber;
}

/// @nodoc
class _$RandomNumberStateCopyWithImpl<$Res, $Val extends RandomNumberState>
    implements $RandomNumberStateCopyWith<$Res> {
  _$RandomNumberStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomNumberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentNumber = freezed,
    Object? randomNumber = freezed,
    Object? isCreating = null,
  }) {
    return _then(_value.copyWith(
      currentNumber: freezed == currentNumber
          ? _value.currentNumber
          : currentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      randomNumber: freezed == randomNumber
          ? _value.randomNumber
          : randomNumber // ignore: cast_nullable_to_non_nullable
              as RandomNumber?,
      isCreating: null == isCreating
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of RandomNumberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RandomNumberCopyWith<$Res>? get randomNumber {
    if (_value.randomNumber == null) {
      return null;
    }

    return $RandomNumberCopyWith<$Res>(_value.randomNumber!, (value) {
      return _then(_value.copyWith(randomNumber: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RandomNumberStateImplCopyWith<$Res>
    implements $RandomNumberStateCopyWith<$Res> {
  factory _$$RandomNumberStateImplCopyWith(_$RandomNumberStateImpl value,
          $Res Function(_$RandomNumberStateImpl) then) =
      __$$RandomNumberStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? currentNumber, RandomNumber? randomNumber, bool isCreating});

  @override
  $RandomNumberCopyWith<$Res>? get randomNumber;
}

/// @nodoc
class __$$RandomNumberStateImplCopyWithImpl<$Res>
    extends _$RandomNumberStateCopyWithImpl<$Res, _$RandomNumberStateImpl>
    implements _$$RandomNumberStateImplCopyWith<$Res> {
  __$$RandomNumberStateImplCopyWithImpl(_$RandomNumberStateImpl _value,
      $Res Function(_$RandomNumberStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomNumberState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentNumber = freezed,
    Object? randomNumber = freezed,
    Object? isCreating = null,
  }) {
    return _then(_$RandomNumberStateImpl(
      currentNumber: freezed == currentNumber
          ? _value.currentNumber
          : currentNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      randomNumber: freezed == randomNumber
          ? _value.randomNumber
          : randomNumber // ignore: cast_nullable_to_non_nullable
              as RandomNumber?,
      isCreating: null == isCreating
          ? _value.isCreating
          : isCreating // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomNumberStateImpl implements _RandomNumberState {
  const _$RandomNumberStateImpl(
      {this.currentNumber, this.randomNumber, this.isCreating = false});

  factory _$RandomNumberStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomNumberStateImplFromJson(json);

  @override
  final int? currentNumber;
  @override
  final RandomNumber? randomNumber;
  @override
  @JsonKey()
  final bool isCreating;

  @override
  String toString() {
    return 'RandomNumberState(currentNumber: $currentNumber, randomNumber: $randomNumber, isCreating: $isCreating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomNumberStateImpl &&
            (identical(other.currentNumber, currentNumber) ||
                other.currentNumber == currentNumber) &&
            (identical(other.randomNumber, randomNumber) ||
                other.randomNumber == randomNumber) &&
            (identical(other.isCreating, isCreating) ||
                other.isCreating == isCreating));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, currentNumber, randomNumber, isCreating);

  /// Create a copy of RandomNumberState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomNumberStateImplCopyWith<_$RandomNumberStateImpl> get copyWith =>
      __$$RandomNumberStateImplCopyWithImpl<_$RandomNumberStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomNumberStateImplToJson(
      this,
    );
  }
}

abstract class _RandomNumberState implements RandomNumberState {
  const factory _RandomNumberState(
      {final int? currentNumber,
      final RandomNumber? randomNumber,
      final bool isCreating}) = _$RandomNumberStateImpl;

  factory _RandomNumberState.fromJson(Map<String, dynamic> json) =
      _$RandomNumberStateImpl.fromJson;

  @override
  int? get currentNumber;
  @override
  RandomNumber? get randomNumber;
  @override
  bool get isCreating;

  /// Create a copy of RandomNumberState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomNumberStateImplCopyWith<_$RandomNumberStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
