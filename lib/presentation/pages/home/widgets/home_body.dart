import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/home/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/home/widgets/home_urlshorten_btn.dart';

/// Body of the HomePage.
class HomeBody extends StatelessWidget {
  /// {@macro home_body}
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Shorten Your URL',
              style: theme.textTheme.headlineLarge,
              textAlign: TextAlign.center,
            ),
            // A text field to enter the URL to be shortened.
            if (state is HomeInitial)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: state.urlController,
                  decoration: InputDecoration(
                    hintText: 'Enter URL',
                    hintStyle: theme.textTheme.bodyLarge,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            // A button to shorten the URL.
            if (state is HomeInitial)
              ShortenUrlButton(
                textEditingController: state.urlController,
              ),
          ],
        );
      },
    );
  }
}
