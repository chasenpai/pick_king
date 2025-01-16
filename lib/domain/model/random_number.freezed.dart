// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'random_number.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RandomNumber _$RandomNumberFromJson(Map<String, dynamic> json) {
  return _RandomNumber.fromJson(json);
}

/// @nodoc
mixin _$RandomNumber {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  List<int> get items => throw _privateConstructorUsedError;

  /// Serializes this RandomNumber to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RandomNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RandomNumberCopyWith<RandomNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomNumberCopyWith<$Res> {
  factory $RandomNumberCopyWith(
          RandomNumber value, $Res Function(RandomNumber) then) =
      _$RandomNumberCopyWithImpl<$Res, RandomNumber>;
  @useResult
  $Res call({int min, int max, List<int> items});
}

/// @nodoc
class _$RandomNumberCopyWithImpl<$Res, $Val extends RandomNumber>
    implements $RandomNumberCopyWith<$Res> {
  _$RandomNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RandomNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RandomNumberImplCopyWith<$Res>
    implements $RandomNumberCopyWith<$Res> {
  factory _$$RandomNumberImplCopyWith(
          _$RandomNumberImpl value, $Res Function(_$RandomNumberImpl) then) =
      __$$RandomNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int min, int max, List<int> items});
}

/// @nodoc
class __$$RandomNumberImplCopyWithImpl<$Res>
    extends _$RandomNumberCopyWithImpl<$Res, _$RandomNumberImpl>
    implements _$$RandomNumberImplCopyWith<$Res> {
  __$$RandomNumberImplCopyWithImpl(
      _$RandomNumberImpl _value, $Res Function(_$RandomNumberImpl) _then)
      : super(_value, _then);

  /// Create a copy of RandomNumber
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? items = null,
  }) {
    return _then(_$RandomNumberImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RandomNumberImpl implements _RandomNumber {
  const _$RandomNumberImpl(
      {required this.min, required this.max, required final List<int> items})
      : _items = items;

  factory _$RandomNumberImpl.fromJson(Map<String, dynamic> json) =>
      _$$RandomNumberImplFromJson(json);

  @override
  final int min;
  @override
  final int max;
  final List<int> _items;
  @override
  List<int> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'RandomNumber(min: $min, max: $max, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RandomNumberImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, min, max, const DeepCollectionEquality().hash(_items));

  /// Create a copy of RandomNumber
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RandomNumberImplCopyWith<_$RandomNumberImpl> get copyWith =>
      __$$RandomNumberImplCopyWithImpl<_$RandomNumberImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RandomNumberImplToJson(
      this,
    );
  }
}

abstract class _RandomNumber implements RandomNumber {
  const factory _RandomNumber(
      {required final int min,
      required final int max,
      required final List<int> items}) = _$RandomNumberImpl;

  factory _RandomNumber.fromJson(Map<String, dynamic> json) =
      _$RandomNumberImpl.fromJson;

  @override
  int get min;
  @override
  int get max;
  @override
  List<int> get items;

  /// Create a copy of RandomNumber
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RandomNumberImplCopyWith<_$RandomNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
