import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:url_shorten/core/app_core.dart';
import 'package:url_shorten/core/params/settings_page_params.dart';
import 'package:url_shorten/core/resources/licence.dart';
import 'package:url_shorten/core/resources/pp.dart';
import 'package:url_shorten/core/resources/tac.dart';
import 'package:url_shorten/presentation/pages/settings/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/settings/components/delete_dialog_comp.dart';
import 'package:url_shorten/presentation/pages/settings/components/settings_tile_comp.dart';
import 'package:url_shorten/presentation/shapes/gnu_shape.dart';
import 'package:url_shorten/presentation/shapes/pp_shape.dart';
import 'package:url_shorten/presentation/shapes/tnc_shape.dart';

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
        return ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(
            scrollbars: false,
          ),
          child: ListView(
            children: [
              // app logo
              const FlutterLogo(
                size: 125,
              ),
              // app name
              Center(
                child: Text(
                  Strings.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // view repo button

              SettingsTile(
                title: const Text('View Repo'),
                icon: const Icon(Icons.code),
                onTap: () {
                  context.read<SettingsBloc>().add(const ViewRepoE());
                },
              ),

              // view authors profile
              SettingsTile(
                title: const Text('View Authors Profile'),
                icon: const Icon(Icons.person),
                onTap: () {
                  context.read<SettingsBloc>().add(const ViewAuthorE());
                },
              ),
              SettingsTile(
                title: const Text('GPL-3.0 License'),
                icon: CustomPaint(
                  painter: GnuPainter(),
                  size: const Size(25, 25),
                ),
                onTap: () async {
                  await showModalBottomSheet(
                    // backgroundColor: Colors.transparent,
                    isDismissible: false,

                    context: context,
                    builder: (context) {
                      return const Markdown(
                        data: gplLICENCE,
                      );
                    },
                  );
                },
              ),

              // view licence

              SettingsTile(
                title: const Text('Privacy Policy'),
                icon: CustomPaint(
                  painter: PrivacyPolicyPainter(),
                  size: const Size(25, 25),
                ),
                onTap: () async {
                  /// open a bottom sheet to show the privacy policy
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const Markdown(data: privacyPolicy);
                    },
                  );
                },
              ),
              // view terms of service
              SettingsTile(
                title: const Text('Terms And Conditions'),
                icon: CustomPaint(
                  painter: TermsAndConditionPainter(),
                  size: const Size(25, 25),
                ),
                onTap: () async {
                  await showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return const Markdown(data: termsAndCondition);
                    },
                  );
                },
              ),

              /// delete all history button

              SettingsTile(
                title: Text(
                  'Delete All History',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.redAccent,
                      ),
                ),
                icon: const Icon(
                  CupertinoIcons.delete,
                  color: Colors.redAccent,
                ),
                onTap: () async {
                  /// show a dialog to confirm the action
                  await showDialog(
                    context: context,
                    builder: (context) {
                      return const DeleteAlertDialog(
                        content: 'Are you sure you want to delete all history?',
                        title: 'Delete All History',
                        deleteType: DeleteType.deleteAllHistory,
                      );
                    },
                  );
                },
              ),

              /// delete all favorite

              SettingsTile(
                title: Text(
                  'Delete All Favorite',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Colors.redAccent,
                      ),
                ),
                icon: const Icon(
                  Icons.delete_forever_rounded,
                  color: Colors.redAccent,
                ),
                onTap: () async {
                  await showDialog(
                    context: context,
                    builder: (context) {
                      return const DeleteAlertDialog(
                        content:
                            'Are you sure you want to delete all favorite?',
                        title: 'Delete All Favorite',
                        deleteType: DeleteType.deleteAllFav,
                      );
                    },
                  );
                },
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        );
      },
    );
  }
}
