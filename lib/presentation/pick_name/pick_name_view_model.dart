import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:pick_king/domain/model/pick_name.dart';
import 'package:pick_king/domain/repository/pick_name_repository.dart';
import 'package:pick_king/presentation/pick_name/pick_name_state.dart';

class PickNameViewModel with ChangeNotifier {

  final PickNameRepository _pickNameRepository;

  PickNameState _state = const PickNameState();
  PickNameState get state => _state;

  final _messageController = StreamController<String>();
  Stream<String> get messageStream => _messageController.stream;

  PickNameViewModel({
    required PickNameRepository pickNameRepository,
  }) : _pickNameRepository = pickNameRepository {
    _loadPickName();
  }

  void _loadPickName() async {
    final pickName = await _pickNameRepository.getPickName();
    if(pickName == null) {
      const newPickName = PickName(
        items: [
          '이름1',
          '이름2',
          '이름3',
          '이름4',
          '이름5',
        ],
      );
      _state = _state.copyWith(
        pickName: newPickName,
      );
    }else {
      _state = _state.copyWith(
        pickName: pickName,
      );
    }
    notifyListeners();
  }

  void togglePicking() async {
    _state = _state.copyWith(
      isPicking: !_state.isPicking,
    );
    notifyListeners();
  }

  void addName() async {
    final currentPickName = _state.pickName!;
    if(currentPickName.items.length < 8) {
      final updatedItems = List<String>.from(currentPickName.items)
        ..add('이름${currentPickName.items.length + 1}');
      final updatedPickName = currentPickName.copyWith(
        items: updatedItems,
      );
      await _pickNameRepository.savePickName(updatedPickName);
      _state = _state.copyWith(
        pickName: updatedPickName,
      );
      notifyListeners();
    }else {
      _messageController.add('이름은 최대 8개까지 추가할 수 있어요.');
    }
  }

  void removeName(int index) async {
    final currentPickName = _state.pickName!;
    if(currentPickName.items.length > 2) {
      final updatedItems = List<String>.from(currentPickName.items)
        ..removeAt(index);
      final updatedPickName = currentPickName.copyWith(
        items: updatedItems,
      );
      await _pickNameRepository.savePickName(updatedPickName);
      _state = _state.copyWith(
        pickName: updatedPickName,
      );
      notifyListeners();
    }else {
      _messageController.add('이름은 최소 2개 있어야 해요.');
    }
  }

  void removeLastName() async {
    final currentPickName = _state.pickName!;
    if(currentPickName.items.length > 2) {
      final updatedItems = List<String>.from(currentPickName.items)
        ..removeLast();
      final updatedPickName = currentPickName.copyWith(
        items: updatedItems,
      );
      await _pickNameRepository.savePickName(updatedPickName);
      _state = _state.copyWith(
        pickName: updatedPickName,
      );
      notifyListeners();
    }else {
      _messageController.add('이름은 최소 2개 있어야 해요.');
    }
  }

  void editName(int index, String item) async {
    final currentPickName = _state.pickName!;
    final updatedItems = List<String>.from(currentPickName.items)
      ..[index] = item;
    final updatedPickName = currentPickName.copyWith(
      items: updatedItems,
    );
    await _pickNameRepository.savePickName(updatedPickName);
    _state = _state.copyWith(
      pickName: updatedPickName,
    );
    notifyListeners();
  }

  void updateResult(int index) async {
    _state = _state.copyWith(
      result: _state.pickName!.items[index],
    );
    notifyListeners();
  }

}