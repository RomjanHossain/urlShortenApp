import 'package:flutter/material.dart';

class HistoryCardLinkText extends StatelessWidget {
  const HistoryCardLinkText({
    required this.shortLink,
    required this.linkType,
    super.key,
  });
  final String shortLink;
  final String linkType;
  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
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
