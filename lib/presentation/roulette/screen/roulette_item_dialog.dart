import 'package:flutter/material.dart';
import 'package:pick_king/presentation/components/common_text_button.dart';

class RouletteItemDialog extends StatefulWidget {
  final String item;
  final VoidCallback onDeleteTap;
  final Function(String) onConfirmTap;

  const RouletteItemDialog({
    required this.item,
    required this.onDeleteTap,
    required this.onConfirmTap,
    super.key,
  });

  @override
  State<RouletteItemDialog> createState() => _RouletteItemDialogState();
}

class _RouletteItemDialogState extends State<RouletteItemDialog> {

  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.item,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 20.0,
      ),
      content: TextField(
        controller: _controller,
        decoration: const InputDecoration(
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
        cursorColor: Colors.orange,
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: CommonTextButton(
                text: '삭제',
                onPressed: widget.onDeleteTap,
              ),
            ),
            const SizedBox(width: 6.0,),
            Expanded(
              child: CommonTextButton(
                text: '확인',
                onPressed: () {
                  widget.onConfirmTap(_controller.text);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
