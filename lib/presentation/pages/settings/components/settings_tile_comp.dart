import 'package:flutter/material.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    super.key,
    this.icon,
    this.onTap,
    required this.title,
  });
  final void Function()? onTap;
  final Widget? icon;
  final Text title;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTap,
        leading: icon,
        title: title,
      ),
    );
  }
}
