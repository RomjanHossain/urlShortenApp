import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/components/copy_icon_button.dart';

class ShrtcoSmllCard extends StatelessWidget {
  const ShrtcoSmllCard({
    required this.txt, super.key,
  });

  /// txt
  final String txt;

  @override
  Widget build(BuildContext context) => Card(
      color: Theme.of(context).colorScheme.tertiaryContainer,
      child: ListTile(
        title: Text(
          txt,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        trailing: CopyIconBtn(txt: txt),
      ),
    );
}
