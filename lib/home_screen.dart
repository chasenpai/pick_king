import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                context.push('/dice');
              },
              child: Text(
                '주사위 던지기',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/roulette');
              },
              child: Text(
                '룰렛',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/draw-name');
              },
              child: Text(
                '이름 추첨',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                context.push('/random-number');
              },
              child: Text(
                '랜덤 숫자',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
