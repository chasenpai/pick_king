import 'package:flutter/material.dart';

class ResetAndCreateButton extends StatefulWidget {

  final VoidCallback onResetPressed;
  final VoidCallback onCreatePressed;

  const ResetAndCreateButton({
    required this.onResetPressed,
    required this.onCreatePressed,
    super.key,
  });

  @override
  State<ResetAndCreateButton> createState() => _ResetAndCreateButtonState();
}

class _ResetAndCreateButtonState extends State<ResetAndCreateButton> {

  bool _isResetPressed = false;
  bool _isCreatePressed = false;

  @override
  Widget build(BuildContext context) {
    const double height = 54.0;
    return Container(
      height: height,
      width: 162.0,
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
                    _isResetPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isResetPressed = false;
                  });
                  widget.onResetPressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isResetPressed = false;
                  });
                },
                child: Container(
                  height: height,
                  color: _isResetPressed ? Colors.grey[300] : Colors.transparent,
                  child: const Center(
                    child: Text(
                      '초기화',
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
                    _isCreatePressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isCreatePressed = false;
                  });
                  widget.onCreatePressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isCreatePressed = false;
                  });
                },
                child: Container(
                  height: height,
                  color: _isCreatePressed ? Colors.grey[300] : Colors.transparent,
                  child: const Center(
                    child: Text(
                      '생성',
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
          ],
        ),
      ),
    );
  }
}
