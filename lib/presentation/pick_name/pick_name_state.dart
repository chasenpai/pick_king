import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pick_king/domain/model/pick_name.dart';

part 'pick_name_state.freezed.dart';
part 'pick_name_state.g.dart';

@freezed
class PickNameState with _$PickNameState {
  const factory PickNameState({
    PickName? pickName,
    @Default(false) bool isPicking,
    String? result,
  }) = _PickNameState;

  factory PickNameState.fromJson(Map<String, dynamic> json) => _$PickNameStateFromJson(json);
}