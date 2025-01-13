import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:roulette/roulette.dart';

class RouletteScreen extends StatefulWidget {
  const RouletteScreen({super.key});

  @override
  State<RouletteScreen> createState() => _RouletteScreenState();
}

class _RouletteScreenState extends State<RouletteScreen> {
  
  final StreamController<int> _streamController = StreamController<int>();
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _names = ['꽝',];
  bool _isSpinning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '룰렛 돌리기',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            if(_names.length > 1)
              Expanded(
              child: FortuneWheel(
                selected: _streamController.stream,
                physics: NoPanPhysics(),
                animateFirst: false,
                onAnimationStart: () {
                  setState(() {
                    _isSpinning = true;
                  });
                },
                onAnimationEnd: () {
                  setState(() {
                    _isSpinning = false;
                  });
                },
                items: _names.map((e) {
                  return FortuneItem(
                    child: Transform.rotate(
                      angle: 90 * 3.14159 / 180,
                      child: Text(
                        e,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                if (_isSpinning) return;
                final random = Random().nextInt(_names.length);
                _streamController.add(random);
                print(random);
              },
              child: Text('룰렛 돌리기'),
            ),
            TextField(
              controller: _textEditingController,
            ),
            ElevatedButton(
              onPressed: () async {
                setState(() {
                  _names.add(_textEditingController.text);
                });
              },
              child: Text('이름 추가'),
            ),
          ],
        ),
      ),
    );
  }
}
