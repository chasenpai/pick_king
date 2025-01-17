import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:pick_king/domain/model/random_number.dart';
import 'package:pick_king/domain/repository/random_number_repository.dart';
import 'package:pick_king/presentation/random_number/random_number_state.dart';

class RandomNumberViewModel with ChangeNotifier {

  final RandomNumberRepository _randomNumberRepository;

  RandomNumberState _state = const RandomNumberState();
  RandomNumberState get state => _state;

  final _messageController = StreamController<String>();
  Stream<String> get messageStream => _messageController.stream;

  RandomNumberViewModel({
    required RandomNumberRepository randomNumberRepository,
  }) : _randomNumberRepository = randomNumberRepository {
    _loadRandomNumber();
  }

  void _loadRandomNumber() async {
    final randomNumber = await _randomNumberRepository.getRandomNumber();
    if(randomNumber == null) {
      final random = Random().nextInt(100);
      final newRandomNumber = RandomNumber(
        min: 0,
        max: 100,
        items: [
          random,
        ],
      );
      _state = _state.copyWith(
        currentNumber: random,
        randomNumber: newRandomNumber,
      );
    }else {
      if(randomNumber.items.isEmpty) {
        _state = _state.copyWith(
          currentNumber: _getRandomNumberByRange(randomNumber.max, randomNumber.min),
          randomNumber: randomNumber,
        );
      }else {
        _state = _state.copyWith(
          currentNumber: randomNumber.items.last,
          randomNumber: randomNumber,
        );
      }
    }
    notifyListeners();
  }

  void createRandomNumber() async {
    final max = _state.randomNumber!.max;
    final min = _state.randomNumber!.min;
    if(max > min) {
      final random = _getRandomNumberByRange(max, min);
      _state = _state.copyWith(
        currentNumber: random,
      );
    }
  }

  void saveRandomNumber() async {
    final updatedItems = List<int>.from(_state.randomNumber!.items)
      ..add( _state.currentNumber!);
    final updatedRandomNumber = _state.randomNumber!.copyWith(
      items: updatedItems,
    );
    await _randomNumberRepository.saveRandomNumber(updatedRandomNumber);
    _state = _state.copyWith(
      randomNumber: updatedRandomNumber,
      isCreating: false,
    );
    notifyListeners();
  }

  void changeMinNumber(int num) async {
    final updatedRandomNumber = _state.randomNumber!.copyWith(
      min: num,
    );
    _state = _state.copyWith(
      randomNumber: updatedRandomNumber,
    );
    notifyListeners();
  }

  void changeMaxNumber(int num) async {
    if (num > 2147483647){
      _messageController.add('최대 2147483547까지 설정할 수 있어요.');
    }else {
      final updatedRandomNumber = _state.randomNumber!.copyWith(
        max: num,
      );
      _state = _state.copyWith(
        randomNumber: updatedRandomNumber,
      );
      notifyListeners();
    }
  }

  void clearItems() async {
    final updatedRandomNumber = _state.randomNumber!.copyWith(
      items: [],
    );
    await _randomNumberRepository.saveRandomNumber(updatedRandomNumber);
    _state = _state.copyWith(
      randomNumber: updatedRandomNumber,
    );
    notifyListeners();
  }

  void toggleCreating() async {
    _state = _state.copyWith(
      isCreating: !_state.isCreating,
    );
    notifyListeners();
  }

  int _getRandomNumberByRange(int max, int min) {
    return Random().nextInt(max - min + 1) + min;
  }

}