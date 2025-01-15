// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roulette_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RouletteState _$RouletteStateFromJson(Map<String, dynamic> json) {
  return _RouletteState.fromJson(json);
}

/// @nodoc
mixin _$RouletteState {
  Roulette? get roulette => throw _privateConstructorUsedError;
  bool get isSpinning => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  /// Serializes this RouletteState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RouletteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouletteStateCopyWith<RouletteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouletteStateCopyWith<$Res> {
  factory $RouletteStateCopyWith(
          RouletteState value, $Res Function(RouletteState) then) =
      _$RouletteStateCopyWithImpl<$Res, RouletteState>;
  @useResult
  $Res call({Roulette? roulette, bool isSpinning, String? result});

  $RouletteCopyWith<$Res>? get roulette;
}

/// @nodoc
class _$RouletteStateCopyWithImpl<$Res, $Val extends RouletteState>
    implements $RouletteStateCopyWith<$Res> {
  _$RouletteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouletteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roulette = freezed,
    Object? isSpinning = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      roulette: freezed == roulette
          ? _value.roulette
          : roulette // ignore: cast_nullable_to_non_nullable
              as Roulette?,
      isSpinning: null == isSpinning
          ? _value.isSpinning
          : isSpinning // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of RouletteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RouletteCopyWith<$Res>? get roulette {
    if (_value.roulette == null) {
      return null;
    }

    return $RouletteCopyWith<$Res>(_value.roulette!, (value) {
      return _then(_value.copyWith(roulette: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RouletteStateImplCopyWith<$Res>
    implements $RouletteStateCopyWith<$Res> {
  factory _$$RouletteStateImplCopyWith(
          _$RouletteStateImpl value, $Res Function(_$RouletteStateImpl) then) =
      __$$RouletteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Roulette? roulette, bool isSpinning, String? result});

  @override
  $RouletteCopyWith<$Res>? get roulette;
}

/// @nodoc
class __$$RouletteStateImplCopyWithImpl<$Res>
    extends _$RouletteStateCopyWithImpl<$Res, _$RouletteStateImpl>
    implements _$$RouletteStateImplCopyWith<$Res> {
  __$$RouletteStateImplCopyWithImpl(
      _$RouletteStateImpl _value, $Res Function(_$RouletteStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouletteState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roulette = freezed,
    Object? isSpinning = null,
    Object? result = freezed,
  }) {
    return _then(_$RouletteStateImpl(
      roulette: freezed == roulette
          ? _value.roulette
          : roulette // ignore: cast_nullable_to_non_nullable
              as Roulette?,
      isSpinning: null == isSpinning
          ? _value.isSpinning
          : isSpinning // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouletteStateImpl implements _RouletteState {
  const _$RouletteStateImpl(
      {this.roulette, this.isSpinning = false, this.result});

  factory _$RouletteStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouletteStateImplFromJson(json);

  @override
  final Roulette? roulette;
  @override
  @JsonKey()
  final bool isSpinning;
  @override
  final String? result;

  @override
  String toString() {
    return 'RouletteState(roulette: $roulette, isSpinning: $isSpinning, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouletteStateImpl &&
            (identical(other.roulette, roulette) ||
                other.roulette == roulette) &&
            (identical(other.isSpinning, isSpinning) ||
                other.isSpinning == isSpinning) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roulette, isSpinning, result);

  /// Create a copy of RouletteState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouletteStateImplCopyWith<_$RouletteStateImpl> get copyWith =>
      __$$RouletteStateImplCopyWithImpl<_$RouletteStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouletteStateImplToJson(
      this,
    );
  }
}

abstract class _RouletteState implements RouletteState {
  const factory _RouletteState(
      {final Roulette? roulette,
      final bool isSpinning,
      final String? result}) = _$RouletteStateImpl;

  factory _RouletteState.fromJson(Map<String, dynamic> json) =
      _$RouletteStateImpl.fromJson;

  @override
  Roulette? get roulette;
  @override
  bool get isSpinning;
  @override
  String? get result;

  /// Create a copy of RouletteState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouletteStateImplCopyWith<_$RouletteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
