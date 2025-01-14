import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:pick_king/presentation/roulette/roulette_state.dart';
import 'package:pick_king/util/color_utils.dart';
import 'package:rxdart/rxdart.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          '룰렛 돌리기',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: widget.onItemAddTap,
            icon: const Icon(
              Icons.add
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20.0,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 72.0,
              child: widget.state.roulette != null && !widget.state.isSpinning && _subject.valueOrNull != null ? Text(
                '결과: ${widget.state.roulette!.items[_subject.valueOrNull!]}',
              ) : null,
            ),
            const SizedBox(height: 72.0,),
            if(widget.state.roulette != null)
              Expanded(
                child: FortuneWheel(
                  selected: _subject.stream,
                  physics: NoPanPhysics(),
                  animateFirst: false,
                  onAnimationStart: widget.onAnimate,
                  onAnimationEnd: widget.onAnimate,
                  items: widget.state.roulette!.items.asMap().entries.map((e) {
                    final index = e.key;
                    final item = e.value;
                    return FortuneItem(
                      onTap: () {
                        widget.onItemTap(index, item);
                      },
                      style: FortuneItemStyle(
                        color: Color(int.parse('0xFF${ColorUtils.getColorByIndex(index)}')),
                      ),
                      child: Transform.rotate(
                        angle: 90 * 3.14159 / 180,
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Colors.black87,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  indicators: const [
                    FortuneIndicator(
                      alignment: Alignment.topCenter,
                      child: TriangleIndicator(
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 72.0,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (widget.state.isSpinning) return;
          final random = Random().nextInt(widget.state.roulette!.items.length);
          _subject.add(random);
        },
        child: const Icon(
          Icons.refresh,
        ),
      ),
    );
  }
}
