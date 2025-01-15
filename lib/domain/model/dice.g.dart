// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiceImpl _$$DiceImplFromJson(Map<String, dynamic> json) => _$DiceImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$DiceImplToJson(_$DiceImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
