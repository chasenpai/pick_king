import 'package:go_router/go_router.dart';
import 'package:pick_king/draw_name_screen.dart';
import 'package:pick_king/home_screen.dart';
import 'package:pick_king/presentation/dice/screen/dice_root.dart';
import 'package:pick_king/presentation/random_number/screen/random_number_root.dart';
import 'package:pick_king/presentation/roulette/screen/roulette_root.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/roulette',
      builder: (context, state) => const RouletteRoot(),
    ),
    GoRoute(
      path: '/dice',
      builder: (context, state) => const DiceRoot(),
    ),
    GoRoute(
      path: '/draw-name',
      builder: (context, state) => DrawNameScreen(),
    ),
    GoRoute(
      path: '/random-number',
      builder: (context, state) => const RandomNumberRoot(),
    ),
  ],
);