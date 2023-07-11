import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/bloc.dart';

/// {@template favorite_body}
/// Body of the FavoritePage.
///
/// Add what it does
/// {@endtemplate}
class FavoriteBody extends StatelessWidget {
  /// {@macro favorite_body}
  const FavoriteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
