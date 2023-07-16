import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/components/custom_alert_dialog.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/viewshorturl_body.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/view/viewshorturlpr_page.dart';

/// A description for ViewshorturlPage

class ViewshorturlPage extends StatelessWidget {
  /// {@macro viewshorturl_page}
  const ViewshorturlPage({
    super.key,
  });

  /// get a url from the user
  // final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('View Short Url'),
      ),
      body: const ViewshorturlView(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: OpenContainer(
        closedBuilder: (context, openBuilder) {
          return FloatingActionButton.extended(
            onPressed: () async {
              var homeState = context.read<HomeBloc>().state;
              if (homeState is HomeInitial) {
                // print('current home state ${_homeState.urlController.text}');
                /// a dialog box and a text field for custom url
                await showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomAlertDialog(
                      onPressed: openBuilder,
                      originURL: homeState.urlController.text,
                    );
                  },
                );
              }
            },
            label: const Text('Custom Alias Shorten URL'),
          );
        },
        openShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        closedShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        closedColor: Theme.of(context).colorScheme.primaryContainer.withOpacity(
              0.3,
            ),
        openColor: Theme.of(context).colorScheme.primaryContainer,
        closedElevation: 0,
        middleColor: Theme.of(context).colorScheme.primaryContainer,
        transitionDuration: 800.milliseconds,
        openBuilder: (context, closeBuilder) {
          return const ViewshorturlprPage();
        },
      ),
    );
  }
}

/// Displays the Body of ViewshorturlView
class ViewshorturlView extends StatelessWidget {
  /// {@macro viewshorturl_view}
  const ViewshorturlView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewshorturlBody();
  }
}
