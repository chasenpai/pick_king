import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pick_king/config/di_setup.dart';
import 'package:pick_king/presentation/components/confirm_dialog.dart';
import 'package:pick_king/presentation/pick_name/pick_name_view_model.dart';
import 'package:pick_king/presentation/pick_name/screen/pick_name_screen.dart';
import 'package:pick_king/presentation/roulette/screen/roulette_item_dialog.dart';

class PickNameRoot extends StatefulWidget {
  const PickNameRoot({super.key});

  @override
  State<PickNameRoot> createState() => _PickNameRootState();
}

class _PickNameRootState extends State<PickNameRoot> {

  late PickNameViewModel _viewModel;
  StreamSubscription? _messageSubscription;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<PickNameViewModel>();
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
        return PickNameScreen(
          state: _viewModel.state,
          onAnimate: _viewModel.togglePicking,
          onNameAddTap: () {
            if(_viewModel.state.isPicking) return;
            _viewModel.addName();
          },
          onNameRemoveTap: () {
            if(_viewModel.state.isPicking) return;
            _viewModel.removeLastName();
          },
          onNameTap: (index, item) {
            if(_viewModel.state.isPicking) return;
            showDialog(
              context: context,
              builder: (context) {
                return RouletteItemDialog(
                  item: item,
                  onDeleteTap: () {
                    _viewModel.removeName(index);
                    context.pop();
                  },
                  onConfirmTap: (item) {
                    _viewModel.editName(index, item);
                    context.pop();
                  },
                );
              },
            );
          },
          updateResult: (index) {
            _viewModel.updateResult(index);
          },
        );
      },
    );
  }
}
