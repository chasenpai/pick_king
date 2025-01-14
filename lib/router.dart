import 'package:go_router/go_router.dart';
import 'package:pick_king/dice_screen.dart';
import 'package:pick_king/draw_name_screen.dart';
import 'package:pick_king/home_screen.dart';
import 'package:pick_king/presentation/roulette/screen/roulette_root.dart';
import 'package:pick_king/random_number_screen.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/dice',
      builder: (context, state) => DiceScreen(),
    ),
    GoRoute(
      path: '/roulette',
      builder: (context, state) => const RouletteRoot(),
    ),
    GoRoute(
      path: '/draw-name',
      builder: (context, state) => DrawNameScreen(),
    ),
    GoRoute(
      path: '/random-number',
      builder: (context, state) => RandomNumberScreen(),
    ),
  ],
);