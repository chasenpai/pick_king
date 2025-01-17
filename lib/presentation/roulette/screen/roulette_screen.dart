import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:pick_king/presentation/components/add_remove_roll_button.dart';
import 'package:pick_king/presentation/roulette/roulette_state.dart';
import 'package:pick_king/util/color_utils.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shaped_widget/shaped_widget.dart';

class RouletteScreen extends StatefulWidget {
  final RouletteState state;
  final VoidCallback onAnimate;
  final VoidCallback onItemAddTap;
  final VoidCallback onItemRemoveTap;
  final Function(int, String) onItemTap;
  final Function(int) updateResult;

  const RouletteScreen({
    required this.state,
    required this.onAnimate,
    required this.onItemAddTap,
    required this.onItemRemoveTap,
    required this.onItemTap,
    required this.updateResult,
    super.key,
  });

  @override
  State<RouletteScreen> createState() => _RouletteScreenState();
}

class _RouletteScreenState extends State<RouletteScreen> {
  
  final BehaviorSubject<int> _subject = BehaviorSubject<int>();

  @override
  void dispose() {
    _subject.close();
    super.dispose();
  }

  void _roll() {
    if (widget.state.isSpinning) return;
    final random = Random().nextInt(widget.state.roulette!.items.length);
    _subject.add(random);
    widget.updateResult(random);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 42.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if(widget.state.roulette != null)
                      SizedBox(
                        height: 42.0,
                        child: !widget.state.isSpinning && _subject.valueOrNull != null ? Text(
                          '결과: ${widget.state.result}',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ) : null,
                      ),
                  ],
                ),
              ),
              if(widget.state.roulette != null)
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Transform.rotate(
                        angle: 180 * 3.14159 / 180,
                        child: Triangle(
                          size: 32.0,
                          color: Colors.orange,
                          isEquilateral: false,
                          // borderWidth: 2.0,
                          // borderColor: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 10.0,),
                      Expanded(
                        child: FortuneWheel(
                          selected: _subject.stream,
                          animateFirst: false,
                          onAnimationStart: widget.onAnimate,
                          onAnimationEnd: widget.onAnimate,
                          onFling: _roll,
                          items: widget.state.roulette!.items.asMap().entries.map((e) {
                            final index = e.key;
                            final item = e.value;
                            return FortuneItem(
                              onTap: () {
                                widget.onItemTap(index, item);
                              },
                              style: FortuneItemStyle(
                                color: Color(int.parse('0xFF${ColorUtils.getColorByIndex(index)}')),
                                borderColor: Colors.black87,
                                borderWidth: 0.0,
                              ),
                              child: Transform.rotate(
                                angle: 90 * 3.14159 / 180,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    color: Colors.black87,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            );
                          }).toList(),
                          indicators: const [],
                        ),
                      ),
                    ],
                  ),
                ),
              const Spacer(),
              AddRemoveRollButton(
                rollText: '돌리기',
                onAddPressed: widget.onItemAddTap,
                onRemovePressed: widget.onItemRemoveTap,
                onRollPressed: _roll,
              ),
              const SizedBox(height: 60.0,),
            ],
          ),
        ),
      ),
    );
  }
}

