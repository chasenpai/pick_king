import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pick_king/config/di_setup.dart';
import 'package:pick_king/data/entity/dice_entity.dart';
import 'package:pick_king/data/entity/pick_name_entity.dart';
import 'package:pick_king/data/entity/random_number_entity.dart';
import 'package:pick_king/data/entity/roulette_entity.dart';
import 'package:pick_king/config/router.dart';

void main() async {
  diSetup();
  await Hive.initFlutter();
  Hive.registerAdapter<RouletteEntity>(RouletteEntityAdapter());
  Hive.registerAdapter<DiceEntity>(DiceEntityAdapter());
  Hive.registerAdapter<RandomNumberEntity>(RandomNumberEntityAdapter());
  Hive.registerAdapter<PickNameEntity>(PickNameEntityAdapter());
  await Hive.openBox('pick_king.db');
  //await Hive.deleteBoxFromDisk('pick_king.db');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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