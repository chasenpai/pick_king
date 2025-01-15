import 'package:flutter/material.dart';

class CommonControlButton extends StatefulWidget {

  final VoidCallback onAddPressed;
  final VoidCallback onRemovePressed;
  final VoidCallback onStartPressed;

  const CommonControlButton({
    required this.onAddPressed,
    required this.onRemovePressed,
    required this.onStartPressed,
    super.key,
  });

  @override
  State<CommonControlButton> createState() => _CommonControlButtonState();
}

class _CommonControlButtonState extends State<CommonControlButton> {

  bool _isAddPressed = false;
  bool _isRemovePressed = false;
  bool _isStartPressed = false;

  @override
  Widget build(BuildContext context) {
    const double height = 54.0;
    return Container(
      height: height,
      width: 196.0,
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
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    _isRemovePressed = true;
                  });
                },
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
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 26.0,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    _isStartPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isStartPressed = false;
                  });
                  widget.onStartPressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isStartPressed = false;
                  });
                },
                child: Container(
                  height: height,
                  color: _isStartPressed ? Colors.grey[300] : Colors.transparent,
                  child: const Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 26.0,
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
