import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pick_king/domain/model/dice.dart';

part 'dice_state.freezed.dart';
part 'dice_state.g.dart';

@freezed
class DiceState with _$DiceState {
  const factory DiceState({
    Dice? dice,
    @Default(false) bool isThrowing,
  }) = _DiceState;

  factory DiceState.fromJson(Map<String, dynamic> json) => _$DiceStateFromJson(json);
}