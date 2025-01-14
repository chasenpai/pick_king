import 'package:get_it/get_it.dart';
import 'package:pick_king/data/repository/roulette_repository_impl.dart';
import 'package:pick_king/domain/repository/roulette_repository.dart';
import 'package:pick_king/presentation/roulette/roulette_view_model.dart';

final getIt = GetIt.instance;

void diSetup() {

  getIt.registerSingleton<RouletteRepository>(
    RouletteRepositoryImpl(),
  );

  getIt.registerFactory<RouletteViewModel>(
    () => RouletteViewModel(
      rouletteRepository: getIt(),
    ),
  );

}