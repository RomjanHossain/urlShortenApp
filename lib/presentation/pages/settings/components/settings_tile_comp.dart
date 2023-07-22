import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    required this.title, super.key,
    this.icon,
    this.onTap,
  });
  final void Function()? onTap;
  final Widget? icon;
  final Text title;
  @override
  Widget build(BuildContext context) => Card(
      child: ListTile(
        onTap: onTap,
        leading: icon,
        title: title,
      ),
    );
}
