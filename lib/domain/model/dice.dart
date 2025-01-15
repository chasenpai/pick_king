import 'package:freezed_annotation/freezed_annotation.dart';

part 'dice.freezed.dart';
part 'dice.g.dart';

@freezed
class Dice with _$Dice {
  const factory Dice({
    required List<int> items,
  }) = _Dice;

  factory Dice.fromJson(Map<String, dynamic> json) => _$DiceFromJson(json);
}