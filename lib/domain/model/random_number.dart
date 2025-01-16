import 'package:freezed_annotation/freezed_annotation.dart';

part 'random_number.freezed.dart';
part 'random_number.g.dart';

@freezed
class RandomNumber with _$RandomNumber {
  const factory RandomNumber({
    required int min,
    required int max,
    required List<int> items,
  }) = _RandomNumber;

  factory RandomNumber.fromJson(Map<String, dynamic> json) => _$RandomNumberFromJson(json);
}