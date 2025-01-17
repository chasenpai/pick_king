import 'package:freezed_annotation/freezed_annotation.dart';

part 'pick_name.freezed.dart';
part 'pick_name.g.dart';

@freezed
class PickName with _$PickName {
  const factory PickName({
    required List<String> items,
  }) = _PickName;

  factory PickName.fromJson(Map<String, dynamic> json) => _$PickNameFromJson(json);
}