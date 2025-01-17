// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pick_name_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PickNameStateImpl _$$PickNameStateImplFromJson(Map<String, dynamic> json) =>
    _$PickNameStateImpl(
      pickName: json['pickName'] == null
          ? null
          : PickName.fromJson(json['pickName'] as Map<String, dynamic>),
      isPicking: json['isPicking'] as bool? ?? false,
      result: json['result'] as String?,
    );

Map<String, dynamic> _$$PickNameStateImplToJson(_$PickNameStateImpl instance) =>
    <String, dynamic>{
      'pickName': instance.pickName,
      'isPicking': instance.isPicking,
      'result': instance.result,
    };
