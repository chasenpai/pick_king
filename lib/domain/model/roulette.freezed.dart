// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'roulette.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Roulette _$RouletteFromJson(Map<String, dynamic> json) {
  return _Roulette.fromJson(json);
}

/// @nodoc
mixin _$Roulette {
  List<String> get items => throw _privateConstructorUsedError;

  /// Serializes this Roulette to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Roulette
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RouletteCopyWith<Roulette> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouletteCopyWith<$Res> {
  factory $RouletteCopyWith(Roulette value, $Res Function(Roulette) then) =
      _$RouletteCopyWithImpl<$Res, Roulette>;
  @useResult
  $Res call({List<String> items});
}

/// @nodoc
class _$RouletteCopyWithImpl<$Res, $Val extends Roulette>
    implements $RouletteCopyWith<$Res> {
  _$RouletteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Roulette
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RouletteImplCopyWith<$Res>
    implements $RouletteCopyWith<$Res> {
  factory _$$RouletteImplCopyWith(
          _$RouletteImpl value, $Res Function(_$RouletteImpl) then) =
      __$$RouletteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> items});
}

/// @nodoc
class __$$RouletteImplCopyWithImpl<$Res>
    extends _$RouletteCopyWithImpl<$Res, _$RouletteImpl>
    implements _$$RouletteImplCopyWith<$Res> {
  __$$RouletteImplCopyWithImpl(
      _$RouletteImpl _value, $Res Function(_$RouletteImpl) _then)
      : super(_value, _then);

  /// Create a copy of Roulette
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$RouletteImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RouletteImpl implements _Roulette {
  const _$RouletteImpl({required final List<String> items}) : _items = items;

  factory _$RouletteImpl.fromJson(Map<String, dynamic> json) =>
      _$$RouletteImplFromJson(json);

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Roulette(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RouletteImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Roulette
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RouletteImplCopyWith<_$RouletteImpl> get copyWith =>
      __$$RouletteImplCopyWithImpl<_$RouletteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RouletteImplToJson(
      this,
    );
  }
}

abstract class _Roulette implements Roulette {
  const factory _Roulette({required final List<String> items}) = _$RouletteImpl;

  factory _Roulette.fromJson(Map<String, dynamic> json) =
      _$RouletteImpl.fromJson;

  @override
  List<String> get items;

  /// Create a copy of Roulette
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RouletteImplCopyWith<_$RouletteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
