import 'package:hive_flutter/hive_flutter.dart';

part 'pick_name_entity.g.dart';

@HiveType(typeId: 3)
class PickNameEntity extends HiveObject {
  @HiveField(0)
  List<String> items;

  PickNameEntity({
    required this.items,
  });
}