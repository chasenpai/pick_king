import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RandomNumberScreen extends StatefulWidget {
  const RandomNumberScreen({super.key});

  @override
  State<RandomNumberScreen> createState() => _RandomNumberScreenState();
}

class _RandomNumberScreenState extends State<RandomNumberScreen> {

  final TextEditingController _minNumberController = TextEditingController();
  final TextEditingController _maxNumberController = TextEditingController();
  final List<int> _numbers = [];

  int _getRandomNumberInRange(int min, int max) {
    final random = Random();
    return min + random.nextInt(max - min + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          '랜덤 숫자',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: _minNumberController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            TextField(
              controller: _maxNumberController,
              keyboardType: TextInputType.number,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
            ),
            if(_numbers.isNotEmpty)
              Text(
                _numbers.last.toString(),
              ),
            if(_numbers.length > 1)
              Expanded(
                child: ListView(
                  children: _numbers.map((e) => Text(
                    e.toString(),
                  )).toList(),
                ),
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  final num = _getRandomNumberInRange(
                    int.parse(_minNumberController.text),
                    int.parse(_maxNumberController.text),
                  );
                  _numbers.add(num);
                });
              },
              child: Text(
                '생성',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
