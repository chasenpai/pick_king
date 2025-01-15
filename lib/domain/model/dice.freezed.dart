// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Dice _$DiceFromJson(Map<String, dynamic> json) {
  return _Dice.fromJson(json);
}

/// @nodoc
mixin _$Dice {
  List<int> get items => throw _privateConstructorUsedError;

  /// Serializes this Dice to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DiceCopyWith<Dice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiceCopyWith<$Res> {
  factory $DiceCopyWith(Dice value, $Res Function(Dice) then) =
      _$DiceCopyWithImpl<$Res, Dice>;
  @useResult
  $Res call({List<int> items});
}

/// @nodoc
class _$DiceCopyWithImpl<$Res, $Val extends Dice>
    implements $DiceCopyWith<$Res> {
  _$DiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dice
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
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DiceImplCopyWith<$Res> implements $DiceCopyWith<$Res> {
  factory _$$DiceImplCopyWith(
          _$DiceImpl value, $Res Function(_$DiceImpl) then) =
      __$$DiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<int> items});
}

/// @nodoc
class __$$DiceImplCopyWithImpl<$Res>
    extends _$DiceCopyWithImpl<$Res, _$DiceImpl>
    implements _$$DiceImplCopyWith<$Res> {
  __$$DiceImplCopyWithImpl(_$DiceImpl _value, $Res Function(_$DiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$DiceImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DiceImpl implements _Dice {
  const _$DiceImpl({required final List<int> items}) : _items = items;

  factory _$DiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DiceImplFromJson(json);

  final List<int> _items;
  @override
  List<int> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'Dice(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DiceImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DiceImplCopyWith<_$DiceImpl> get copyWith =>
      __$$DiceImplCopyWithImpl<_$DiceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DiceImplToJson(
      this,
    );
  }
}

abstract class _Dice implements Dice {
  const factory _Dice({required final List<int> items}) = _$DiceImpl;

  factory _Dice.fromJson(Map<String, dynamic> json) = _$DiceImpl.fromJson;

  @override
  List<int> get items;

  /// Create a copy of Dice
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DiceImplCopyWith<_$DiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
