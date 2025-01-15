import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pick_king/domain/model/roulette.dart';

part 'roulette_state.freezed.dart';
part 'roulette_state.g.dart';

@freezed
class RouletteState with _$RouletteState {
  const factory RouletteState({
    Roulette? roulette,
    @Default(false) bool isSpinning,
    String? result,
  }) = _RouletteState;

  factory RouletteState.fromJson(Map<String, dynamic> json) => _$RouletteStateFromJson(json);
}