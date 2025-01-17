import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:pick_king/presentation/components/add_remove_roll_button.dart';
import 'package:pick_king/presentation/pick_name/pick_name_state.dart';
import 'package:rxdart/rxdart.dart';
import 'package:pick_king/util/color_utils.dart';
import 'package:shaped_widget/shaped_widgets/triangle.dart';

class PickNameScreen extends StatefulWidget {

  final PickNameState state;
  final VoidCallback onAnimate;
  final VoidCallback onNameAddTap;
  final VoidCallback onNameRemoveTap;
  final Function(int, String) onNameTap;
  final Function(int) updateResult;

  const PickNameScreen({
    required this.state,
    required this.onAnimate,
    required this.onNameAddTap,
    required this.onNameRemoveTap,
    required this.onNameTap,
    required this.updateResult,
    super.key,
  });

  @override
  State<PickNameScreen> createState() => _PickNameScreenState();
}

class _PickNameScreenState extends State<PickNameScreen> {

  final BehaviorSubject<int> _subject = BehaviorSubject<int>();

  @override
  void dispose() {
    _subject.close();
    super.dispose();
  }

  void _pick() {
    if(widget.state.isPicking) return;
    final random = Random().nextInt(widget.state.pickName!.items.length);
    _subject.add(random);
    widget.updateResult(random);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 42.0,
              ),
              child: SizedBox(
                height: 42.0,
                child: widget.state.pickName != null && !widget.state.isPicking && _subject.valueOrNull != null ? Text(
                  '결과: ${widget.state.result}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ) : null,
              ),
            ),
            if(widget.state.pickName != null)
              SizedBox(
                height: 114.0,
                child: Column(
                  children: [
                    Transform.rotate(
                      angle: 180 * 3.14159 / 180,
                      child: Triangle(
                        size: 32.0,
                        color: Colors.orange,
                        isEquilateral: false,
                        // borderWidth: 2.0,
                        // borderColor: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 10.0,),
                    FortuneBar(
                      height: 72.0,
                      selected: _subject.stream,
                      animateFirst: false,
                      visibleItemCount: 3,
                      onAnimationStart: widget.onAnimate,
                      onAnimationEnd: widget.onAnimate,
                      onFling: _pick,
                      items: widget.state.pickName!.items.asMap().entries.map((e) {
                        final index = e.key;
                        final item = e.value;
                        return FortuneItem(
                          child: Container(
                            decoration: BoxDecoration(
                              color: Color(int.parse('0xFF${ColorUtils.getColorByIndex(index)}')),
                            ),
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                              child: Text(
                                item,
                                style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                      indicators: const [
                      ],
                    ),
                  ],
                ),
              ),
            const Spacer(),
            if(widget.state.pickName != null)
            Wrap(
              spacing: 16.0,
              runSpacing: 16.0,
              children: widget.state.pickName!.items.asMap().entries.map((e) {
                final index = e.key;
                final item = e.value;
                return GestureDetector(
                  onTap: () {
                    widget.onNameTap(index, item);
                  },
                  child: SizedBox(
                    width: (MediaQuery.of(context).size.width - 40 - 16) /2,
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 18.0,
                        backgroundColor: Color(int.parse('0xFF${ColorUtils.getColorByIndex(index)}')),
                      ),
                      title: Text(
                        item,
                        style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const Spacer(),
            AddRemoveRollButton(
              rollText: '추첨',
              onAddPressed: widget.onNameAddTap,
              onRemovePressed: widget.onNameRemoveTap,
              onRollPressed: _pick,
            ),
            const SizedBox(height: 60.0,),
          ],
        ),
      ),
    );
  }
}
