import 'package:freezed_annotation/freezed_annotation.dart';

part 'roulette.freezed.dart';
part 'roulette.g.dart';

@freezed
class Roulette with _$Roulette {
  const factory Roulette({
    required List<String> items,
  }) = _Roulette;

  factory Roulette.fromJson(Map<String, dynamic> json) => _$RouletteFromJson(json);
}