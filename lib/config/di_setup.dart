import 'package:get_it/get_it.dart';
import 'package:pick_king/data/repository/dice_repository_impl.dart';
import 'package:pick_king/data/repository/random_number_repository_impl.dart';
import 'package:pick_king/data/repository/roulette_repository_impl.dart';
import 'package:pick_king/domain/repository/dice_repository.dart';
import 'package:pick_king/domain/repository/random_number_repository.dart';
import 'package:pick_king/domain/repository/roulette_repository.dart';
import 'package:pick_king/presentation/dice/dice_view_model.dart';
import 'package:pick_king/presentation/random_number/random_number_view_model.dart';
import 'package:pick_king/presentation/roulette/roulette_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {

  getIt.registerSingleton<RouletteRepository>(
    RouletteRepositoryImpl(),
  );
  getIt.registerSingleton<DiceRepository>(
    DiceRepositoryImpl(),
  );
  getIt.registerSingleton<RandomNumberRepository>(
    RandomNumberRepositoryImpl(),
  );

  getIt.registerFactory<RouletteViewModel>(
    () => RouletteViewModel(
      rouletteRepository: getIt(),
    ),
  );
  getIt.registerFactory<DiceViewModel>(
    () => DiceViewModel(
      diceRepository: getIt(),
    ),
  );
  getIt.registerFactory<RandomNumberViewModel>(
    () => RandomNumberViewModel(
      randomNumberRepository: getIt(),
    ),
  );

}