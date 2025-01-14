import 'package:hive_flutter/hive_flutter.dart';
import 'package:pick_king/data/entity/roulette_entity.dart';
import 'package:pick_king/data/mapper/roulette_mapper.dart';
import 'package:pick_king/domain/model/roulette.dart';
import 'package:pick_king/domain/repository/roulette_repository.dart';

class RouletteRepositoryImpl implements RouletteRepository {

  @override
  Future<Roulette?> getRoulette() async {
    final box = Hive.box('pick_king.db');
    final RouletteEntity? roulette = box.get('roulette');
    return roulette?.toModel();
  }

  @override
  Future<void> saveRoulette(Roulette model) async {
    final roulette = model.toEntity();
    final box = Hive.box('pick_king.db');
    await box.put('roulette', roulette);
  }

}