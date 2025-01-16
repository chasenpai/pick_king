import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pick_king/domain/model/random_number.dart';

part 'random_number_state.freezed.dart';
part 'random_number_state.g.dart';

@freezed
class RandomNumberState with _$RandomNumberState {
  const factory RandomNumberState({
    int? currentNumber,
    RandomNumber? randomNumber,
    @Default(false) bool isCreating,
  }) = _RandomNumberState;

  factory RandomNumberState.fromJson(Map<String, dynamic> json) => _$RandomNumberStateFromJson(json);
}