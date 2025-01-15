import 'package:pick_king/data/entity/dice_entity.dart';
import 'package:pick_king/domain/model/dice.dart';

extension DiceEntityToModel on DiceEntity {
  Dice toModel() {
    return Dice(
      items: items,
    );
  }
}

extension DiceModelToEntity on Dice {
  DiceEntity toEntity() {
    return DiceEntity(
      items: items,
    );
  }
}