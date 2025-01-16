import 'package:pick_king/data/entity/random_number_entity.dart';
import 'package:pick_king/domain/model/random_number.dart';

extension RandomNumberEntityToModel on RandomNumberEntity {
  RandomNumber toModel() {
    return RandomNumber(
      min: min,
      max: max,
      items: items,
    );
  }
}

extension RandomNumberModelToEntity on RandomNumber {
  RandomNumberEntity toEntity() {
    return RandomNumberEntity(
      min: min,
      max: max,
      items: items,
    );
  }
}
