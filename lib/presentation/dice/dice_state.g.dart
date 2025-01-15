// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dice_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DiceStateImpl _$$DiceStateImplFromJson(Map<String, dynamic> json) =>
    _$DiceStateImpl(
      dice: json['dice'] == null
          ? null
          : Dice.fromJson(json['dice'] as Map<String, dynamic>),
      isThrowing: json['isThrowing'] as bool? ?? false,
    );

Map<String, dynamic> _$$DiceStateImplToJson(_$DiceStateImpl instance) =>
    <String, dynamic>{
      'dice': instance.dice,
      'isThrowing': instance.isThrowing,
    };
