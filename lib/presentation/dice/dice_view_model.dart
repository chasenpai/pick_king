import 'dart:async';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:pick_king/domain/model/dice.dart';
import 'package:pick_king/domain/repository/dice_repository.dart';
import 'package:pick_king/presentation/dice/dice_state.dart';

class DiceViewModel with ChangeNotifier {

  final DiceRepository _diceRepository;

  DiceState _state = const DiceState();
  DiceState get state => _state;

  final _messageController = StreamController<String>();
  Stream<String> get messageStream => _messageController.stream;

  DiceViewModel({
    required DiceRepository diceRepository,
  }) : _diceRepository = diceRepository {
    _loadDice();
  }

  void _loadDice() async {
    final dice = await _diceRepository.getDice();
    if(dice == null) {
      final newDice = Dice(
        items: [
          Random().nextInt(6) + 1,
        ],
      );
      _state = _state.copyWith(
        dice: newDice,
      );
    }else {
      _state = _state.copyWith(
        dice: dice,
      );
    }
    notifyListeners();
  }

  void toggleThrowing() async {
    _state = _state.copyWith(
      isThrowing: !_state.isThrowing,
    );
    notifyListeners();
  }

  void throwDice() async {
    List<int> results = [];
    for (int i = 0; i < _state.dice!.items.length; i++) {
      final random = Random().nextInt(6) + 1;
      results.add(random);
    }
    final updatedDice = _state.dice!.copyWith(
      items: results,
    );
    _state = _state.copyWith(
      dice: updatedDice,
    );
    notifyListeners();
  }

  void addDice() async {
    final currentDice = _state.dice!;
    if(currentDice.items.length < 6) {
      final updatedItems = List<int>.from(currentDice.items)
        ..add(Random().nextInt(6) + 1);
      final updatedDice = currentDice.copyWith(
        items: updatedItems,
      );
      await _diceRepository.saveDice(updatedDice);
      _state = _state.copyWith(
        dice: updatedDice,
      );
      notifyListeners();
    }else {
      _messageController.add('주사위는 최대 6개까지 추가할 수 있어요.');
    }
  }

  void removeDice() async {
    final currentDice = _state.dice!;
    if(currentDice.items.length > 1) {
      final updatedItems = List<int>.from(currentDice.items)
        ..removeLast();
      final updatedDice = currentDice.copyWith(
        items: updatedItems,
      );
      await _diceRepository.saveDice(updatedDice);
      _state = _state.copyWith(
        dice: updatedDice,
      );
      notifyListeners();
    }else {
      _messageController.add('주사위는 최소 1개 있어야 해요.');
    }
  }

  int calculateSum() {
    int sum = 0;
    for(int i = 0; i < _state.dice!.items.length; i++) {
      sum += _state.dice!.items[i];
    }
    return sum;
  }

}