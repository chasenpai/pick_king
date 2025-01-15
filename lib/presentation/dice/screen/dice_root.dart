import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pick_king/config/di_setup.dart';
import 'package:pick_king/presentation/components/confirm_dialog.dart';
import 'package:pick_king/presentation/dice/dice_view_model.dart';
import 'package:pick_king/presentation/dice/screen/dice_screen.dart';

class DiceRoot extends StatefulWidget {
  const DiceRoot({super.key});

  @override
  State<DiceRoot> createState() => _DiceRootState();
}

class _DiceRootState extends State<DiceRoot> {

  late DiceViewModel _viewModel;
  StreamSubscription? _messageSubscription;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<DiceViewModel>();
    _messageSubscription = _viewModel.messageStream.listen((message) {
      if(mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return ConfirmDialog(
              message: message,
            );
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _messageSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: _viewModel,
      builder: (context, widget) {
        return DiceScreen(
          state: _viewModel.state,
          onDiceAddTap: () {
            if(_viewModel.state.isThrowing) return;
            _viewModel.addDice();
          },
          onDiceRemoveTap: () {
            if(_viewModel.state.isThrowing) return;
            _viewModel.removeDice();
          },
          onThrowTap: _viewModel.throwDice,
          onToggleThrowing: _viewModel.toggleThrowing,
          sum: _viewModel.state.dice != null ? _viewModel.calculateSum() : null,
        );
      },
    );
  }
}
