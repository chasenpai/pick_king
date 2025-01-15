import 'package:flutter/material.dart';

class CommonTextButton extends StatefulWidget {

  final String text;
  final VoidCallback onPressed;

  const CommonTextButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  State<CommonTextButton> createState() => _CommonTextButtonState();
}

class _CommonTextButtonState extends State<CommonTextButton> {

  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          color: _isPressed ? Colors.grey[300] : Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w500,
                color: widget.text == '삭제' ? Colors.red : Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
