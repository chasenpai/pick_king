import 'package:hive_flutter/hive_flutter.dart';

part 'roulette_entity.g.dart';

@HiveType(typeId: 0)
class RouletteEntity extends HiveObject {
  @HiveField(0)
  List<String> items;

  RouletteEntity({
    required this.items
  });
}