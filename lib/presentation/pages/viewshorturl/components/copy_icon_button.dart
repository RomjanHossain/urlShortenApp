import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CopyIconBtn extends StatelessWidget {
  const CopyIconBtn({
    required this.txt,
    super.key,
  });

  final String txt;

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: () async {
          await Clipboard.setData(ClipboardData(text: txt));

          /// show a snackbar
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Copied to Clipboard'),
              duration: Duration(seconds: 1),
            ),
          );
        },
        icon: const Icon(Icons.copy),
        // alignment: Alignment.centerRight,
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
      );
}
