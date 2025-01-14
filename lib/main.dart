import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pick_king/config/di_setup.dart';
import 'package:pick_king/data/entity/roulette_entity.dart';
import 'package:pick_king/router.dart';

void main() async {
  diSetup();
  await Hive.initFlutter();
  Hive.registerAdapter<RouletteEntity>(RouletteEntityAdapter());
  await Hive.openBox('pick_king.db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}