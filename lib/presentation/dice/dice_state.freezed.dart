// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dice_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DiceState _$DiceStateFromJson(Map<String, dynamic> json) {
  return _DiceState.fromJson(json);
}

/// @nodoc
mixin _$DiceState {
  Dice? get dice => throw _privateConstructorUsedError;
  bool get isThrowing => throw _privateConstructorUsedError;

  /// Serializes this DiceState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiceStateCopyWith<DiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiceStateCopyWith<$Res> {
  factory $DiceStateCopyWith(DiceState value, $Res Function(DiceState) then) =
      _$DiceStateCopyWithImpl<$Res, DiceState>;
  @useResult
  $Res call({Dice? dice, bool isThrowing});

  $DiceCopyWith<$Res>? get dice;
}

/// @nodoc
class _$DiceStateCopyWithImpl<$Res, $Val extends DiceState>
    implements $DiceStateCopyWith<$Res> {
  _$DiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dice = freezed,
    Object? isThrowing = null,
  }) {
    return _then(_value.copyWith(
      dice: freezed == dice
          ? _value.dice
          : dice // ignore: cast_nullable_to_non_nullable
              as Dice?,
      isThrowing: null == isThrowing
          ? _value.isThrowing
          : isThrowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of DiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DiceCopyWith<$Res>? get dice {
    if (_value.dice == null) {
      return null;
    }

    return $DiceCopyWith<$Res>(_value.dice!, (value) {
      return _then(_value.copyWith(dice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DiceStateImplCopyWith<$Res>
    implements $DiceStateCopyWith<$Res> {
  factory _$$DiceStateImplCopyWith(
          _$DiceStateImpl value, $Res Function(_$DiceStateImpl) then) =
      __$$DiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Dice? dice, bool isThrowing});

  @override
  $DiceCopyWith<$Res>? get dice;
}

/// @nodoc
class __$$DiceStateImplCopyWithImpl<$Res>
    extends _$DiceStateCopyWithImpl<$Res, _$DiceStateImpl>
    implements _$$DiceStateImplCopyWith<$Res> {
  __$$DiceStateImplCopyWithImpl(
      _$DiceStateImpl _value, $Res Function(_$DiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dice = freezed,
    Object? isThrowing = null,
  }) {
    return _then(_$DiceStateImpl(
      dice: freezed == dice
          ? _value.dice
          : dice // ignore: cast_nullable_to_non_nullable
              as Dice?,
      isThrowing: null == isThrowing
          ? _value.isThrowing
          : isThrowing // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiceStateImpl implements _DiceState {
  const _$DiceStateImpl({this.dice, this.isThrowing = false});

  factory _$DiceStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiceStateImplFromJson(json);

  @override
  final Dice? dice;
  @override
  @JsonKey()
  final bool isThrowing;

  @override
  String toString() {
    return 'DiceState(dice: $dice, isThrowing: $isThrowing)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiceStateImpl &&
            (identical(other.dice, dice) || other.dice == dice) &&
            (identical(other.isThrowing, isThrowing) ||
                other.isThrowing == isThrowing));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dice, isThrowing);

  /// Create a copy of DiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiceStateImplCopyWith<_$DiceStateImpl> get copyWith =>
      __$$DiceStateImplCopyWithImpl<_$DiceStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiceStateImplToJson(
      this,
    );
  }
}

abstract class _DiceState implements DiceState {
  const factory _DiceState({final Dice? dice, final bool isThrowing}) =
      _$DiceStateImpl;

  factory _DiceState.fromJson(Map<String, dynamic> json) =
      _$DiceStateImpl.fromJson;

  @override
  Dice? get dice;
  @override
  bool get isThrowing;

  /// Create a copy of DiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiceStateImplCopyWith<_$DiceStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
