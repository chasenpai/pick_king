import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';

class DrawNameScreen extends StatefulWidget {
  const DrawNameScreen({super.key});

  @override
  State<DrawNameScreen> createState() => _DrawNameScreenState();
}

class _DrawNameScreenState extends State<DrawNameScreen> {

  final StreamController<int> _streamController = StreamController<int>();
  final TextEditingController _textEditingController = TextEditingController();
  final List<String> _names = [];
  bool _isSpinning = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '이름 추첨',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            if(_names.isNotEmpty)
              FortuneBar(
              selected: _streamController.stream,
              animateFirst: false,
              physics: NoPanPhysics(),
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
              indicators: [

              ],
              items: _names.map((e) {
                return FortuneItem(
                  child: Text(
                    e,
                  ),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () async {
                if (_isSpinning) return;
                final random = Random().nextInt(_names.length);
                _streamController.add(random);
              },
              child: Text('이름 추첨'),
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
