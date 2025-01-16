import 'package:pick_king/domain/model/random_number.dart';

abstract interface class RandomNumberRepository {

  Future<RandomNumber?> getRandomNumber();

  Future<void> saveRandomNumber(RandomNumber model);

}