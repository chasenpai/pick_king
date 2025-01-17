// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_name_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PickNameState _$PickNameStateFromJson(Map<String, dynamic> json) {
  return _PickNameState.fromJson(json);
}

/// @nodoc
mixin _$PickNameState {
  PickName? get pickName => throw _privateConstructorUsedError;
  bool get isPicking => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;

  /// Serializes this PickNameState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PickNameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PickNameStateCopyWith<PickNameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickNameStateCopyWith<$Res> {
  factory $PickNameStateCopyWith(
          PickNameState value, $Res Function(PickNameState) then) =
      _$PickNameStateCopyWithImpl<$Res, PickNameState>;
  @useResult
  $Res call({PickName? pickName, bool isPicking, String? result});

  $PickNameCopyWith<$Res>? get pickName;
}

/// @nodoc
class _$PickNameStateCopyWithImpl<$Res, $Val extends PickNameState>
    implements $PickNameStateCopyWith<$Res> {
  _$PickNameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickNameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickName = freezed,
    Object? isPicking = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      pickName: freezed == pickName
          ? _value.pickName
          : pickName // ignore: cast_nullable_to_non_nullable
              as PickName?,
      isPicking: null == isPicking
          ? _value.isPicking
          : isPicking // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of PickNameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PickNameCopyWith<$Res>? get pickName {
    if (_value.pickName == null) {
      return null;
    }

    return $PickNameCopyWith<$Res>(_value.pickName!, (value) {
      return _then(_value.copyWith(pickName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PickNameStateImplCopyWith<$Res>
    implements $PickNameStateCopyWith<$Res> {
  factory _$$PickNameStateImplCopyWith(
          _$PickNameStateImpl value, $Res Function(_$PickNameStateImpl) then) =
      __$$PickNameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PickName? pickName, bool isPicking, String? result});

  @override
  $PickNameCopyWith<$Res>? get pickName;
}

/// @nodoc
class __$$PickNameStateImplCopyWithImpl<$Res>
    extends _$PickNameStateCopyWithImpl<$Res, _$PickNameStateImpl>
    implements _$$PickNameStateImplCopyWith<$Res> {
  __$$PickNameStateImplCopyWithImpl(
      _$PickNameStateImpl _value, $Res Function(_$PickNameStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickNameState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickName = freezed,
    Object? isPicking = null,
    Object? result = freezed,
  }) {
    return _then(_$PickNameStateImpl(
      pickName: freezed == pickName
          ? _value.pickName
          : pickName // ignore: cast_nullable_to_non_nullable
              as PickName?,
      isPicking: null == isPicking
          ? _value.isPicking
          : isPicking // ignore: cast_nullable_to_non_nullable
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
class _$PickNameStateImpl implements _PickNameState {
  const _$PickNameStateImpl(
      {this.pickName, this.isPicking = false, this.result});

  factory _$PickNameStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickNameStateImplFromJson(json);

  @override
  final PickName? pickName;
  @override
  @JsonKey()
  final bool isPicking;
  @override
  final String? result;

  @override
  String toString() {
    return 'PickNameState(pickName: $pickName, isPicking: $isPicking, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickNameStateImpl &&
            (identical(other.pickName, pickName) ||
                other.pickName == pickName) &&
            (identical(other.isPicking, isPicking) ||
                other.isPicking == isPicking) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pickName, isPicking, result);

  /// Create a copy of PickNameState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickNameStateImplCopyWith<_$PickNameStateImpl> get copyWith =>
      __$$PickNameStateImplCopyWithImpl<_$PickNameStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickNameStateImplToJson(
      this,
    );
  }
}

abstract class _PickNameState implements PickNameState {
  const factory _PickNameState(
      {final PickName? pickName,
      final bool isPicking,
      final String? result}) = _$PickNameStateImpl;

  factory _PickNameState.fromJson(Map<String, dynamic> json) =
      _$PickNameStateImpl.fromJson;

  @override
  PickName? get pickName;
  @override
  bool get isPicking;
  @override
  String? get result;

  /// Create a copy of PickNameState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickNameStateImplCopyWith<_$PickNameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
