import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/home/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/viewshorturl.dart';

/// Body of the HomePage.
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Shorten Your URL',
              style: _theme.textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            // A text field to enter the URL to be shortened.
            if (state is HomeInitial)
              TextField(
                controller: state.urlController,
                decoration: InputDecoration(
                  hintText: 'Enter URL',
                  hintStyle: _theme.textTheme.bodyLarge,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            // A button to shorten the URL.
            if (state is HomeInitial)
              ElevatedButton(
                onPressed: () {
                  // if the url is empty, show a snackbar.
                  if (state.urlController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: _theme.colorScheme.error,
                        content: Text(
                          'Please enter a URL',
                          style: _theme.textTheme.bodyLarge,
                        ),
                      ),
                    );
                  } else {
                    print('URL: ${state.urlController.text}');
                    // context.read<ViewshorturlBloc>().state.url =
                    //     state.urlController.text;
                    context.read<ViewshorturlBloc>().add(
                        AddViewshorturlEvent(url: state.urlController.text));

                    // if the url is not empty, add the ShortenUrlEvent to the bloc.
                    context.read<HomeBloc>().add(
                          GotoViewShortUrlPageEvent(context
                              // url: state.urlController.text,
                              ),
                        );
                  }
                },
                child: Text(
                  'Shorten',
                  style: _theme.textTheme.bodyLarge,
                ),
              ),
          ],
        );
      },
    );
  }
}
