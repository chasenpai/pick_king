// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pick_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PickName _$PickNameFromJson(Map<String, dynamic> json) {
  return _PickName.fromJson(json);
}

/// @nodoc
mixin _$PickName {
  List<String> get items => throw _privateConstructorUsedError;

  /// Serializes this PickName to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PickName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PickNameCopyWith<PickName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickNameCopyWith<$Res> {
  factory $PickNameCopyWith(PickName value, $Res Function(PickName) then) =
      _$PickNameCopyWithImpl<$Res, PickName>;
  @useResult
  $Res call({List<String> items});
}

/// @nodoc
class _$PickNameCopyWithImpl<$Res, $Val extends PickName>
    implements $PickNameCopyWith<$Res> {
  _$PickNameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickName
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
abstract class _$$PickNameImplCopyWith<$Res>
    implements $PickNameCopyWith<$Res> {
  factory _$$PickNameImplCopyWith(
          _$PickNameImpl value, $Res Function(_$PickNameImpl) then) =
      __$$PickNameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> items});
}

/// @nodoc
class __$$PickNameImplCopyWithImpl<$Res>
    extends _$PickNameCopyWithImpl<$Res, _$PickNameImpl>
    implements _$$PickNameImplCopyWith<$Res> {
  __$$PickNameImplCopyWithImpl(
      _$PickNameImpl _value, $Res Function(_$PickNameImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$PickNameImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PickNameImpl implements _PickName {
  const _$PickNameImpl({required final List<String> items}) : _items = items;

  factory _$PickNameImpl.fromJson(Map<String, dynamic> json) =>
      _$$PickNameImplFromJson(json);

  final List<String> _items;
  @override
  List<String> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'PickName(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickNameImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  /// Create a copy of PickName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickNameImplCopyWith<_$PickNameImpl> get copyWith =>
      __$$PickNameImplCopyWithImpl<_$PickNameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PickNameImplToJson(
      this,
    );
  }
}

abstract class _PickName implements PickName {
  const factory _PickName({required final List<String> items}) = _$PickNameImpl;

  factory _PickName.fromJson(Map<String, dynamic> json) =
      _$PickNameImpl.fromJson;

  @override
  List<String> get items;

  /// Create a copy of PickName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickNameImplCopyWith<_$PickNameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
