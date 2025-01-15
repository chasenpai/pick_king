import 'package:hive_flutter/hive_flutter.dart';

part 'dice_entity.g.dart';

@HiveType(typeId: 1)
class DiceEntity extends HiveObject {
  @HiveField(0)
  List<int> items;

  DiceEntity({
    required this.items,
  });
}