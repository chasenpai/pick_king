import 'package:pick_king/data/entity/roulette_entity.dart';
import 'package:pick_king/domain/model/roulette.dart';

extension RouletteEntityToModel on RouletteEntity {
  Roulette toModel() {
    return Roulette(
      items: items,
    );
  }
}

extension RouletteModelToEntity on Roulette {
  RouletteEntity toEntity() {
    return RouletteEntity(
      items: items,
    );
  }
}