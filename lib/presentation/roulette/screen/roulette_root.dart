import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pick_king/config/di_setup.dart';
import 'package:pick_king/presentation/roulette/roulette_view_model.dart';
import 'package:pick_king/presentation/roulette/screen/roulette_item_dialog.dart';
import 'package:pick_king/presentation/roulette/screen/roulette_screen.dart';

class RouletteRoot extends StatefulWidget {
  const RouletteRoot({super.key});

  @override
  State<RouletteRoot> createState() => _RouletteRootState();
}

class _RouletteRootState extends State<RouletteRoot> {

  late RouletteViewModel _viewModel;
  StreamSubscription? _messageSubscription;

  @override
  void initState() {
    super.initState();
    _viewModel = getIt<RouletteViewModel>();
    _messageSubscription = _viewModel.messageStream.listen((message) {
      if(mounted) {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                message,
              ),
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
        return RouletteScreen(
          state: _viewModel.state,
          onAnimate: _viewModel.toggleSpinning,
          onItemAddTap: () {
            _viewModel.addItem();
          },
          onItemTap: (index, item) {
            showDialog(
              context: context,
              builder: (context) {
                return RouletteItemDialog(
                  item: item,
                  onDeleteTap: () {
                    _viewModel.removeItem(index);
                    context.pop();
                  },
                  onConfirmTap: (item) {
                    _viewModel.editItem(index, item);
                    context.pop();
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
