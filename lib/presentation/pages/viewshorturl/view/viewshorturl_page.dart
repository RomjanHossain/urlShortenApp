import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/viewshorturl_body.dart';

/// {@template viewshorturl_page}
/// A description for ViewshorturlPage
/// {@endtemplate}
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
        title: Text('View Short Url'),
      ),
      body: ViewshorturlView(),
    );
  }
}

/// {@template viewshorturl_view}
/// Displays the Body of ViewshorturlView
/// {@endtemplate}
class ViewshorturlView extends StatelessWidget {
  /// {@macro viewshorturl_view}
  const ViewshorturlView({super.key});

  @override
  Widget build(BuildContext context) {
    return const ViewshorturlBody();
  }
}
