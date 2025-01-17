import 'package:flutter/material.dart';

class AddRemoveRollButton extends StatefulWidget {

  final String rollText;
  final VoidCallback onAddPressed;
  final VoidCallback onRemovePressed;
  final VoidCallback onRollPressed;

  const AddRemoveRollButton({
    required this.rollText,
    required this.onAddPressed,
    required this.onRemovePressed,
    required this.onRollPressed,
    super.key,
  });

  @override
  State<AddRemoveRollButton> createState() => _AddRemoveRollButtonState();
}

class _AddRemoveRollButtonState extends State<AddRemoveRollButton> {

  bool _isAddPressed = false;
  bool _isRemovePressed = false;
  bool _isRollPressed = false;

  @override
  Widget build(BuildContext context) {
    const double height = 54.0;
    return Container(
      height: height,
      width: 243.0,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16.0),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    _isAddPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isAddPressed = false;
                  });
                  widget.onAddPressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isAddPressed = false;
                  });
                },
                child: Container(
                  height: height,
                  color: _isAddPressed ? Colors.grey[300] : Colors.transparent,
                  child: Center(
                    child: Text(
                      '추가',
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (_) => setState(() {
                    _isRemovePressed = true;
                  }),
                onTapUp: (_) {
                  setState(() {
                    _isRemovePressed = false;
                  });
                  widget.onRemovePressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isRemovePressed = false;
                  });
                },
                child: Container(
                  height: height,
                  color: _isRemovePressed ? Colors.grey[300] : Colors.transparent,
                  child: const Center(
                    child: Text(
                     '삭제',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    _isRollPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isRollPressed = false;
                  });
                  widget.onRollPressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isRollPressed = false;
                  });
                },
                child: Container(
                  height: height,
                  color: _isRollPressed ? Colors.grey[300] : Colors.transparent,
                  child: Center(
                    child: Text(
                      widget.rollText,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
