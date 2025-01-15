import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pick_king/presentation/components/common_button.dart';

class ConfirmDialog extends StatelessWidget {

  final String message;
  final VoidCallback? onPressed;

  const ConfirmDialog({
    required this.message,
    this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        message,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
      actions: [
        CommonButton(
          text: '확인',
          onPressed: onPressed != null ? onPressed! : () {
            context.pop();
          },
        ),
      ],
    );
  }
}
