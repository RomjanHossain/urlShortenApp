import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/copy_icon_button.dart';

class ShrtcoSmllCard extends StatelessWidget {
  const ShrtcoSmllCard({
    super.key,
    required this.txt,
  });

  /// txt
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.tertiary,
      child: ListTile(
        title: Text(
          txt,
          style: Theme.of(context).textTheme.labelLarge,
        ),
        trailing: CopyIconBtn(txt: txt),
      ),
    );
  }
}
