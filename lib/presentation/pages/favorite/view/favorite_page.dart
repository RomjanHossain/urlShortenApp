import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/favorite/widgets/favorite_body.dart';

/// Displays the Body of FavoriteView
/// {@endtemplate}
class FavoriteView extends StatelessWidget {
  /// {@macro favorite_view}
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const FavoriteBody();
  }
}
