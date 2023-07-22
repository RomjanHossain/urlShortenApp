import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/home_page_params.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/viewshorturl_bloc.dart';

class ShortenUrlButton extends StatelessWidget {
  const ShortenUrlButton({
    required this.textEditingController, super.key,
  });

  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return ElevatedButton(
      onPressed: () {
        // print('the txt mm -> ${textEditingController.text}');
        // if the url is empty, show a snackbar.
        if (textEditingController.text.isEmpty) {
          errorSnakeBar('Please enter a URL', context);
        } else {
          final String url = textEditingController.text;
          if (HomePageParams.isURL(url)) {
            /// Add the url to the bloc.
            context
                .read<ViewshorturlBloc>()
                .add(AddViewshorturlEvent(url: url));

            /// chagne the state of ViewShortUrlPage to ViewShortUrlPageState.
            /// This will change the page to ViewShortUrlPage.
            context.read<ViewshorturlBloc>().add(GetShortUrlEvent(url: url));
            // if the url is not empty, add the ShortenUrlEvent to the bloc.
            context.read<HomeBloc>().add(
                  GotoViewShortUrlPageEvent(context,
                      // url: state.urlController.text,
                      ),
                );
          } else {
            errorSnakeBar('Please enter a valid URL', context);
          }
        }
      },
      child: Text(
        'Shorten',
        style: theme.textTheme.bodyLarge,
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> errorSnakeBar(
      String msg, BuildContext context,) => ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        showCloseIcon: true,
        backgroundColor: Theme.of(context).colorScheme.error,
        content: Text(
          msg,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
}
