import 'package:pick_king/domain/model/roulette.dart';

abstract interface class RouletteRepository {

  Future<Roulette?> getRoulette();

  Future<void> saveRoulette(Roulette model);

}