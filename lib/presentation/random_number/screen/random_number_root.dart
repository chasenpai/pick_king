import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pick_king/config/di_setup.dart';
import 'package:pick_king/presentation/components/confirm_dialog.dart';
import 'package:pick_king/presentation/random_number/random_number_view_model.dart';
import 'package:pick_king/presentation/random_number/screen/random_number_screen.dart';

class RandomNumberRoot extends StatefulWidget {
  const RandomNumberRoot({super.key});

  @override
  State<RandomNumberRoot> createState() => _RandomNumberRootState();
}

class _RandomNumberRootState extends State<RandomNumberRoot> {
  late RandomNumberViewModel _viewModel;
  StreamSubscription? _messageSubscription;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<RandomNumberViewModel>();
    _messageSubscription = _viewModel.messageStream.listen((message) {
      if (mounted) {
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
        return RandomNumberScreen(
          state: _viewModel.state,
          onMinNumberChanged: (int num) {
            if(_viewModel.state.isCreating) return;
            _viewModel.changeMinNumber(num);
          },
          onMaxNumberChanged: (int num) {
            if(_viewModel.state.isCreating) return;
            _viewModel.changeMaxNumber(num);
          },
          onCreateTap: _viewModel.createRandomNumber,
          toggleCreating: _viewModel.toggleCreating,
          saveRandomNumber: _viewModel.saveRandomNumber,
          onClearTap: _viewModel.clearItems,
        );
      },
    );
  }
}
