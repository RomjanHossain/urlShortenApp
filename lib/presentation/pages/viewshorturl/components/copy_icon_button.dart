import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyIconBtn extends StatelessWidget {
  const CopyIconBtn({
    super.key,
    required this.txt,
  });

  final String txt;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Clipboard.setData(ClipboardData(text: txt));

        /// show a snackbar
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Copied to Clipboard'),
            duration: Duration(seconds: 1),
          ),
        );
      },
      icon: const Icon(Icons.copy),
      // alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(0),
      constraints: const BoxConstraints(
        minWidth: 0,
        minHeight: 0,
      ),
    );
  }
}
