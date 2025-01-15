import 'package:hive_flutter/hive_flutter.dart';
import 'package:pick_king/data/entity/dice_entity.dart';
import 'package:pick_king/data/mapper/dice_mapper.dart';
import 'package:pick_king/domain/model/dice.dart';
import 'package:pick_king/domain/repository/dice_repository.dart';

class DiceRepositoryImpl implements DiceRepository {

  @override
  Future<Dice?> getDice() async {
    final box = Hive.box('pick_king.db');
    final DiceEntity? dice = box.get('dice');
    return dice?.toModel();
  }

  @override
  Future<void> saveDice(Dice model) async {
    final dice = model.toEntity();
    final box = Hive.box('pick_king.db');
    await box.put('dice', dice);
  }

}