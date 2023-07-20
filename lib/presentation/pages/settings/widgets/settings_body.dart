import 'package:flutter/cupertino.dart';
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
            const FlutterLogo(
              size: 125,
            ),
            // app name
            Center(
              child: Text(
                'Url Shorten',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            // view repo button
            const Card(
              child: ListTile(
                leading: Icon(Icons.code),
                title: Text('View Repo'),
              ),
            ),

            // view authors profile
            const Card(
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text('View Authors Profile'),
              ),
            ),

            /// delete all history button

            Card(
              child: ListTile(
                onTap: () {
                  /// show a dialog to confirm the action
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // contentPadding: const EdgeInsets.all(5),
                        insetPadding: const EdgeInsets.all(5),
                        title: const Text('Delete All History'),
                        content: const Text(
                            'Are you sure you want to delete all history?'),
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
                              Navigator.pop(context);
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      );
                    },
                  );
                },
                leading: Icon(
                  CupertinoIcons.delete,
                  color: Colors.redAccent,
                ),
                title: Text(
                  'Delete All History',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.redAccent,
                      ),
                ),
              ),
            ),

            /// delete all favorite

            Card(
              child: ListTile(
                onTap: () {
                  /// show a dialog to confirm the action
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // contentPadding: const EdgeInsets.all(5),
                        insetPadding: const EdgeInsets.all(5),
                        title: const Text('Delete All Favorite'),
                        content: const Text(
                            'Are you sure you want to delete all favorite?'),
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
                              Navigator.pop(context);
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      );
                    },
                  );
                },
                leading: Icon(
                  Icons.delete_forever_rounded,
                  color: Colors.redAccent,
                ),
                title: Text(
                  'Delete All Favorite',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.redAccent,
                      ),
                ),
              ),
            ),
            // view licence
            const Card(
              child: ListTile(
                leading: Icon(Icons.info_rounded),
                title: Text('View Licence'),
              ),
            ),
          ],
        );
      },
    );
  }
}
