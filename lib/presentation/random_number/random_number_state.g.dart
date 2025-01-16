// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_number_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomNumberStateImpl _$$RandomNumberStateImplFromJson(
        Map<String, dynamic> json) =>
    _$RandomNumberStateImpl(
      currentNumber: (json['currentNumber'] as num?)?.toInt(),
      randomNumber: json['randomNumber'] == null
          ? null
          : RandomNumber.fromJson(json['randomNumber'] as Map<String, dynamic>),
      isCreating: json['isCreating'] as bool? ?? false,
    );

Map<String, dynamic> _$$RandomNumberStateImplToJson(
        _$RandomNumberStateImpl instance) =>
    <String, dynamic>{
      'currentNumber': instance.currentNumber,
      'randomNumber': instance.randomNumber,
      'isCreating': instance.isCreating,
    };
