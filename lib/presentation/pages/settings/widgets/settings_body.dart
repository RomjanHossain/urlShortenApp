import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/settings/bloc/bloc.dart';

/// {@template settings_body}
/// Body of the SettingsPage.
///
/// Add what it does
/// {@endtemplate}
class SettingsBody extends StatelessWidget {
  /// {@macro settings_body}
  const SettingsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingsBloc, SettingsState>(
      builder: (context, state) {
        return ListView(
          children: [
            // app logo
            FlutterLogo(
              size: 125,
            ),
            // app name
            Center(
              child: Text(
                'Url Shorten',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            // view repo button
            ElevatedButton(
              onPressed: () {},
              child: const Text('View Repo'),
            ),
            // view authors profile
            ElevatedButton(
              onPressed: () {},
              child: const Text('View Authors Profile'),
            ),

            /// delete all history button
            ElevatedButton(
              onPressed: () {},
              child: const Text('Delete All History'),
            ),

            /// delete all favorite
            ElevatedButton(
              onPressed: () {},
              child: const Text('Delete All Favorite'),
            ),
          ],
        );
      },
    );
  }
}
