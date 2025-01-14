import 'package:flutter/material.dart';

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
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: _controller,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: widget.onDeleteTap,
                child: Text(
                  '삭제',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  widget.onConfirmTap(_controller.text);
                },
                child: Text(
                  '확인',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
