import 'package:hive_flutter/hive_flutter.dart';

part 'random_number_entity.g.dart';

@HiveType(typeId: 2)
class RandomNumberEntity extends HiveObject {
  @HiveField(0)
  int min;
  @HiveField(1)
  int max;
  @HiveField(2)
  List<int> items;

  RandomNumberEntity({
    required this.min,
    required this.max,
    required this.items,
  });
}