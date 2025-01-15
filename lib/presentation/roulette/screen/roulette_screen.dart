import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:pick_king/presentation/roulette/roulette_state.dart';
import 'package:pick_king/util/color_utils.dart';
import 'package:rxdart/rxdart.dart';
import 'package:shaped_widget/shaped_widget.dart';

class RouletteScreen extends StatefulWidget {
  final RouletteState state;
  final VoidCallback onAnimate;
  final VoidCallback onItemAddTap;
  final Function(int, String) onItemTap;

  const RouletteScreen({
    required this.state,
    required this.onAnimate,
    required this.onItemAddTap,
    required this.onItemTap,
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: widget.onItemAddTap,
            icon: const Icon(
              Icons.add,
              size: 28.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: Padding(
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
                  Text(
                    !widget.state.isSpinning && _subject.valueOrNull != null
                        ? '🥳'
                        : '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    !widget.state.isSpinning && _subject.valueOrNull != null
                      ? widget.state.roulette!.items[_subject.valueOrNull!]
                      : '',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
            if(widget.state.roulette != null)
              SizedBox(
                height: MediaQuery.of(context).size.width - 40,
                child: Stack(
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 12.0,),
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
                                  borderWidth: 2.0,
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
                    Positioned(
                      left: MediaQuery.of(context).size.width / 2 - 36.0,
                      child: Transform.rotate(
                        angle: 180 * 3.14159 / 180,
                        child: Triangle(
                          size: 32.0,
                          color: Colors.white,
                          isEquilateral: false,
                          borderWidth: 2.0,
                          borderColor: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            const Spacer(),
            const SizedBox(height: 60.0,),
          ],
        ),
      ),
      floatingActionButton: Stack(
        children: [
          FloatingActionButton(
            onPressed: _roll,
            shape: const CircleBorder(),
            elevation: 0,
            backgroundColor: Colors.orange,
            child: const Icon(
              Icons.refresh,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

