import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/viewshorturl_body.dart';

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
