import 'package:pick_king/data/entity/pick_name_entity.dart';
import 'package:pick_king/domain/model/pick_name.dart';

extension PickNameEntityToModel on PickNameEntity {
  PickName toModel() {
    return PickName(
      items: items,
    );
  }
}

extension PickNameModelToEntity on PickName {
  PickNameEntity toEntity() {
    return PickNameEntity(
      items: items,
    );
  }
}
