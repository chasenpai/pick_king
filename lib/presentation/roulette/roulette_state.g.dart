// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roulette_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RouletteStateImpl _$$RouletteStateImplFromJson(Map<String, dynamic> json) =>
    _$RouletteStateImpl(
      roulette: json['roulette'] == null
          ? null
          : Roulette.fromJson(json['roulette'] as Map<String, dynamic>),
      isSpinning: json['isSpinning'] as bool? ?? false,
      result: (json['result'] as num?)?.toInt(),
      massage: json['massage'] as String?,
    );

Map<String, dynamic> _$$RouletteStateImplToJson(_$RouletteStateImpl instance) =>
    <String, dynamic>{
      'roulette': instance.roulette,
      'isSpinning': instance.isSpinning,
      'result': instance.result,
      'massage': instance.massage,
    };
