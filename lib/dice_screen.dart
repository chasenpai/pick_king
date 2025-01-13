import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:math';

class DiceScreen extends StatefulWidget {
  const DiceScreen({super.key});

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> with SingleTickerProviderStateMixin {

  List<int> _diceFaces = [1];
  late AnimationController _controller;
  late Animation<double> _shakeAnimation;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: -0.035, end: 0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: 0.035, end: -0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: -0.035, end: 0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: 0.035, end: -0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: -0.035, end: 0.035), weight: 0.2),
    ]).animate(_controller);
  }

  void _addDice() {
    setState(() {
      _diceFaces.add(1);
    });
  }

  void _removeDice() {
    setState(() {
      _diceFaces.removeLast();
    });
  }

  void _rollDice() {
    if (_isAnimating) return;
    setState(() {
      _isAnimating = true;
    });

    _controller.forward().then((_) {
      Future.delayed(Duration(milliseconds: 300), () {
        setState(() {
          for (int i = 0; i < _diceFaces.length; i++) {
            _diceFaces[i] = Random().nextInt(6) + 1;
          }
        });
      });
      _controller.reverse().then((_) {
        setState(() {
          _isAnimating = false;
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '주사위 던지기',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20.0,),
            Expanded(
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: List.generate(_diceFaces.length, (index) {
                  return AnimatedBuilder(
                    animation: _shakeAnimation,
                    builder: (context, child) {
                      return Transform.rotate(
                        angle: _isAnimating ? _shakeAnimation.value : 0.0,
                        child: SizedBox(
                          height: 92.0,
                          width: 92.0,
                          child: Image.asset(
                            'assets/images/dice/dice_${_diceFaces[index]}.png',
                          ),
                        ),
                      );
                    },
                  );
                }),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _rollDice,
                  child: Text(
                    '던지기',
                  ),
                ),
                ElevatedButton(
                  onPressed: _addDice,
                  child: Text(
                    '주사위 추가',
                  ),
                ),
                ElevatedButton(
                  onPressed: _removeDice,
                  child: Text(
                    '주사위 제거',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
