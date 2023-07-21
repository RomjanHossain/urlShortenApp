import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/settings_page_params.dart';
import 'package:url_shorten/presentation/pages/settings/bloc/settings_bloc.dart';

class DeleteAlertDialog extends StatelessWidget {
  const DeleteAlertDialog({
    super.key,
    required this.title,
    required this.content,
    required this.deleteType,
  });
  final String title;
  final String content;
  final DeleteType deleteType;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      // contentPadding: const EdgeInsets.all(5),
      insetPadding: const EdgeInsets.all(5),
      title: Text(title),
      content: Text(content),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.redAccent,
          ),
          onPressed: () {
            if (deleteType == DeleteType.deleteAllHistory) {
              context.read<SettingsBloc>().add(const DeleteAllHistoryE());
              Navigator.pop(context);
            } else if (deleteType == DeleteType.deleteAllFav) {
              context.read<SettingsBloc>().add(const DeleteAllFavE());
              Navigator.pop(context);
            }
          },
          child: const Text('Delete'),
        ),
      ],
    );
  }
}
