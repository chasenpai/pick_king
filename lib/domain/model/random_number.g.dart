// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'random_number.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RandomNumberImpl _$$RandomNumberImplFromJson(Map<String, dynamic> json) =>
    _$RandomNumberImpl(
      min: (json['min'] as num).toInt(),
      max: (json['max'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$RandomNumberImplToJson(_$RandomNumberImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'items': instance.items,
    };
