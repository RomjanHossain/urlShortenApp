import 'package:flutter/material.dart';

class HistoryCardLinkText extends StatelessWidget {
  const HistoryCardLinkText({
    super.key,
    required this.shortLink,
    required this.linkType,
  });
  final String shortLink;
  final String linkType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$linkType: ',
          textAlign: TextAlign.left,
        ),
        SelectableText(
          shortLink,
          style: const TextStyle(
            color: Colors.blueAccent,
          ),
        ),
      ],
    );
  }
}
