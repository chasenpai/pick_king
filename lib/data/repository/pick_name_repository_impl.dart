import 'package:hive_flutter/hive_flutter.dart';
import 'package:pick_king/data/entity/pick_name_entity.dart';
import 'package:pick_king/data/mapper/pick_name_mapper.dart';
import 'package:pick_king/domain/model/pick_name.dart';
import 'package:pick_king/domain/repository/pick_name_repository.dart';

class PickNameRepositoryImpl implements PickNameRepository {

  @override
  Future<PickName?> getPickName() async {
    final box = Hive.box('pick_king.db');
    final PickNameEntity? pickName = box.get('pick_name');
    return pickName?.toModel();
  }

  @override
  Future<void> savePickName(PickName model) async {
    final pickName = model.toEntity();
    final box = Hive.box('pick_king.db');
    await box.put('pick_name', pickName);
  }

}