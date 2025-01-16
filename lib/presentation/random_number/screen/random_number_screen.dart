import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pick_king/presentation/components/reset_and_create_button.dart';
import 'package:pick_king/presentation/random_number/random_number_state.dart';

class RandomNumberScreen extends StatefulWidget {

  final RandomNumberState state;
  final Function(int) onMinNumberChanged;
  final Function(int) onMaxNumberChanged;
  final VoidCallback onCreateTap;
  final VoidCallback toggleCreating;
  final VoidCallback saveRandomNumber;
  final VoidCallback onClearTap;

  const RandomNumberScreen({
    required this.state,
    required this.onMinNumberChanged,
    required this.onMaxNumberChanged,
    required this.onCreateTap,
    required this.toggleCreating,
    required this.saveRandomNumber,
    required this.onClearTap,
    super.key,
  });

  @override
  State<RandomNumberScreen> createState() => _RandomNumberScreenState();
}

class _RandomNumberScreenState extends State<RandomNumberScreen> with SingleTickerProviderStateMixin {

  final TextEditingController _minNumController = TextEditingController();
  final TextEditingController _maxNumController = TextEditingController();
  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );
    _animationController.addListener(() {
      if(_animationController.isAnimating) {
        widget.toggleCreating();
        widget.onCreateTap();
      }
    });
    _animationController.addStatusListener((status) {
      if(status == AnimationStatus.completed) {
        widget.toggleCreating();
        widget.saveRandomNumber();
      }
    });
  }

  void _create() {
    FocusScope.of(context).unfocus();
    _animationController.reset();
    _animationController.forward();
  }

  @override
  void dispose() {
    _minNumController.dispose();
    _maxNumController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(widget.state.randomNumber != null) {
      _minNumController.text = widget.state.randomNumber!.min.toString();
      _maxNumController.text = widget.state.randomNumber!.max.toString();
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if(widget.state.randomNumber != null)
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 48.0,
                          child: widget.state.randomNumber != null ? Center(
                            child: Text(
                              widget.state.currentNumber!.toString(),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 36.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                          ) : null,
                        ),
                        const SizedBox(height: 48.0,),
                        Row(
                          children: [
                            const Spacer(),
                            SizedBox(
                              width: 92.0,
                              child: TextField(
                                controller: _minNumController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                                onChanged: (value) {
                                  if(value.isEmpty) return;
                                  widget.onMinNumberChanged(int.parse(value));
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  fillColor: Colors.grey[300],
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: const BorderSide(
                                        color: Colors.orange,
                                        width: 2.0
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: 20.0,
                              ),
                              child: Text(
                                '~',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black87,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 92.0,
                              child: TextField(
                                controller: _maxNumController,
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black87,
                                ),
                                onChanged: (value) {
                                  if(value.isEmpty) return;
                                  widget.onMaxNumberChanged(int.parse(value));
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(16.0),
                                    borderSide: const BorderSide(
                                        color: Colors.orange,
                                        width: 2.0
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 32.0,
                            ),
                            child: ListView.builder(
                              itemCount: widget.state.randomNumber!.items.reversed.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    bottom: 12.0,
                                  ),
                                  child: Text(
                                    widget.state.randomNumber!.items.reversed.toList()[index].toString(),
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ResetAndCreateButton(
                  onResetPressed: () {
                    FocusScope.of(context).unfocus();
                    widget.onClearTap();
                  },
                  onCreatePressed: _create,
                ),
                const SizedBox(height: 60.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
