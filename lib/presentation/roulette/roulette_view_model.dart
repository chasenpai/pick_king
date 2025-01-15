import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pick_king/domain/model/roulette.dart';
import 'package:pick_king/domain/repository/roulette_repository.dart';
import 'package:pick_king/presentation/roulette/roulette_state.dart';

class RouletteViewModel with ChangeNotifier {

  final RouletteRepository _rouletteRepository;

  RouletteState _state = const RouletteState();
  RouletteState get state => _state;
  
  final _messageController = StreamController<String>();
  Stream<String> get messageStream => _messageController.stream;

  RouletteViewModel({
    required RouletteRepository rouletteRepository,
  }) : _rouletteRepository = rouletteRepository {
    _loadRoulette();
  }

  //todo error?
  void _loadRoulette() async {
    final roulette = await _rouletteRepository.getRoulette();
    if(roulette == null) {
      const newRoulette = Roulette(
        items: [
          '옵션1',
          '옵션2',
          '옵션3',
          '옵션4',
          '옵션5',
        ],
      );
      _state = _state.copyWith(
        roulette: newRoulette,
      );
    }else {
      _state = _state.copyWith(
        roulette: roulette,
      );
    }
    notifyListeners();
  }

  void toggleSpinning() async {
    _state = _state.copyWith(
      isSpinning: !_state.isSpinning,
    );
    notifyListeners();
  }

  void addItem() async {
    final currentRoulette = _state.roulette!;
    if(currentRoulette.items.length < 8) {
      final updatedItems = List<String>.from(currentRoulette.items)
        ..add('옵션${currentRoulette.items.length + 1}');
      final updatedRoulette = currentRoulette.copyWith(
        items: updatedItems,
      );
      await _rouletteRepository.saveRoulette(updatedRoulette);
      _state = _state.copyWith(
        roulette: updatedRoulette,
      );
      notifyListeners();
    }else {
      _messageController.add('옵션은 최대 8개까지 추가할 수 있어요.');
    }
  }

  void removeItem(int index) async {
    final currentRoulette = _state.roulette!;
    if(currentRoulette.items.length > 2) {
      final updatedItems = List<String>.from(currentRoulette.items)
        ..removeAt(index);
      final updatedRoulette = currentRoulette.copyWith(
        items: updatedItems,
      );
      await _rouletteRepository.saveRoulette(updatedRoulette);
      _state = _state.copyWith(
        roulette: updatedRoulette,
      );
      notifyListeners();
    }else {
      _messageController.add('옵션은 최소 2개 있어야 해요.');
    }
  }

  void removeLastItem() async {
    final currentRoulette = _state.roulette!;
    if(currentRoulette.items.length > 2) {
      final updatedItems = List<String>.from(currentRoulette.items)
        ..removeLast();
      final updatedRoulette = currentRoulette.copyWith(
        items: updatedItems,
      );
      await _rouletteRepository.saveRoulette(updatedRoulette);
      _state = _state.copyWith(
        roulette: updatedRoulette,
      );
      notifyListeners();
    }else {
      _messageController.add('옵션은 최소 2개 있어야 해요.');
    }
  }

  void editItem(int index, String item) async {
    final currentRoulette = _state.roulette!;
    final updatedItems = List<String>.from(currentRoulette.items)
      ..[index] = item;
    final updatedRoulette = currentRoulette.copyWith(
      items: updatedItems,
    );
    await _rouletteRepository.saveRoulette(updatedRoulette);
    _state = _state.copyWith(
      roulette: updatedRoulette,
    );
    notifyListeners();
  }

  void updateResult(int index) async {
    _state = _state.copyWith(
      result: _state.roulette!.items[index],
    );
    notifyListeners();
  }

}