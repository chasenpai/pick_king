import 'package:hive_flutter/hive_flutter.dart';
import 'package:pick_king/data/entity/random_number_entity.dart';
import 'package:pick_king/data/mapper/random_number_mapper.dart';
import 'package:pick_king/domain/model/random_number.dart';
import 'package:pick_king/domain/repository/random_number_repository.dart';

class RandomNumberRepositoryImpl implements RandomNumberRepository {

  @override
  Future<RandomNumber?> getRandomNumber() async {
    final box = Hive.box('pick_king.db');
    final RandomNumberEntity? randomNumber = box.get('random_number');
    return randomNumber?.toModel();
  }

  @override
  Future<void> saveRandomNumber(RandomNumber model) async {
    final randomNumber = model.toEntity();
    final box = Hive.box('pick_king.db');
    await box.put('random_number', randomNumber);
  }

}