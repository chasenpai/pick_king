import 'package:pick_king/domain/model/pick_name.dart';

abstract interface class PickNameRepository {

  Future<PickName?> getPickName();

  Future<void> savePickName(PickName model);

}