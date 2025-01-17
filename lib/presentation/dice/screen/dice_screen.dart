import 'package:flutter/material.dart';
import 'package:pick_king/presentation/components/add_remove_roll_button.dart';
import 'package:pick_king/presentation/dice/dice_state.dart';

class DiceScreen extends StatefulWidget {

  final DiceState state;
  final VoidCallback onDiceAddTap;
  final VoidCallback onDiceRemoveTap;
  final VoidCallback onThrowTap;
  final VoidCallback onToggleThrowing;
  final int? sum;

  const DiceScreen({
    required this.state,
    required this.onDiceAddTap,
    required this.onDiceRemoveTap,
    required this.onThrowTap,
    required this.onToggleThrowing,
    required this.sum,
    super.key,
  });

  @override
  State<DiceScreen> createState() => _DiceScreenState();
}

class _DiceScreenState extends State<DiceScreen> with SingleTickerProviderStateMixin {

  late final AnimationController _animationController;
  late final Animation<double> _shakeAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _shakeAnimation = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: -0.035, end: 0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: 0.035, end: -0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: -0.035, end: 0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: 0.035, end: -0.035), weight: 0.2),
      TweenSequenceItem(tween: Tween(begin: -0.035, end: 0.035), weight: 0.2),
    ]).animate(_animationController);
  }

  void _throw() {
    if(widget.state.isThrowing) return;
    widget.onToggleThrowing();
    _animationController.forward().then((_) {
      Future.delayed(const Duration(milliseconds: 300), () {
        widget.onThrowTap();
      });
    }).then((_) {
      _animationController.reverse().then((_) {
        widget.onToggleThrowing();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if(widget.state.dice != null)
                SizedBox(
                  height: 42.0,
                  child: !widget.state.isThrowing && widget.state.dice != null ? Text(
                    widget.state.dice!.items.length > 1
                      ? '합: ${widget.sum.toString()}'
                      : widget.sum.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ) : null,
                ),
              const SizedBox(height: 42.0,),
              if(widget.state.dice != null)
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 16.0,
                    runSpacing: 16.0,
                    children: widget.state.dice!.items.map((e) {
                      return AnimatedBuilder(
                        animation: _shakeAnimation,
                        builder: (context, child) {
                          return Transform.rotate(
                            angle: widget.state.isThrowing ? _shakeAnimation.value : 0.0,
                            child: SizedBox(
                              width: (MediaQuery.of(context).size.width - 132.0 - 16.0) / 2,
                              height:  (MediaQuery.of(context).size.width - 132.0 - 16.0) / 2,
                              child: Image.asset(
                                'assets/images/dice/dice_$e.png',
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              const Spacer(),
              AddRemoveRollButton(
                rollText: '던지기',
                onAddPressed: widget.onDiceAddTap,
                onRemovePressed: widget.onDiceRemoveTap,
                onRollPressed: _throw,
              ),
              const SizedBox(height: 60.0,),
            ],
          ),
        ),
      ),
    );
  }
}
