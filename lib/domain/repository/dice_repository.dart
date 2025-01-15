import 'package:pick_king/domain/model/dice.dart';

abstract interface class DiceRepository {

  Future<Dice?> getDice();

  Future<void> saveDice(Dice model);

}