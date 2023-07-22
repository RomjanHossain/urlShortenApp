import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/home_page_params.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/viewshorturlpr_bloc.dart';

class CustomAlertDialog extends StatelessWidget {
  CustomAlertDialog({
    required this.onPressed, required this.originURL, super.key,
  });
  final void Function() onPressed;
  final TextEditingController _textFieldController = TextEditingController();
  final String originURL;
  @override
  Widget build(BuildContext context) => AlertDialog(
      // contentPadding: const EdgeInsets.all(2),
      insetPadding: const EdgeInsets.all(2),
      title: const Text('Custom Alias'),
      content: TextField(
        controller: _textFieldController,
        decoration: const InputDecoration(hintText: 'Enter your custom alias'),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        TextButton(
          onPressed: () {
            if (_textFieldController.text.isEmpty) {
              /// show a snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  content: const Text('Field cannot be empty'),
                ),
              );
            } else if (!HomePageParams.isURL(_textFieldController.text)) {
              // Navigator.of(context).pop();
              context.read<ViewshorturlprBloc>().add(
                    GetPremiumShortUrlEvent(
                      url: originURL,
                      custom: _textFieldController.text,
                    ),
                  );
              onPressed();
            } else {
              /// show a snackbar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).colorScheme.error,
                  content: const Text('Do not enter a URL'),
                ),
              );
            }
          },
          child: const Text('Shorten'),
        ),
      ],
    );
}
