import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/widgets/viewshorturlpr_body.dart';

/// {@template viewshorturlpr_page}
/// A description for ViewshorturlprPage
/// {@endtemplate}
class ViewshorturlprPage extends StatelessWidget {
  /// {@macro viewshorturlpr_page}
  const ViewshorturlprPage({super.key});

  /// The static route for ViewshorturlprPage
  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
        builder: (_) => const ViewshorturlprPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alias URL'),
        centerTitle: true,
      ),
      body: const ViewshorturlprView(),
    );
  }
}

/// {@template viewshorturlpr_view}
/// Displays the Body of ViewshorturlprView
/// {@endtemplate}
class ViewshorturlprView extends StatelessWidget {
  /// {@macro viewshorturlpr_view}
  const ViewshorturlprView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewshorturlprBody();
  }
}
