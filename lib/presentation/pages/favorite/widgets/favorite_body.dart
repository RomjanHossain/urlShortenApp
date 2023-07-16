import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/data/models/shrtco_fav_db_model.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';
import 'package:url_shorten/presentation/pages/favorite/components/fav_card_comp.dart';
import 'package:url_shorten/presentation/pages/favorite/components/fav_card_shrtco_comp.dart';

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
        if (state is FavoriteInitial) {
          return ScrollConfiguration(
            behavior:
                ScrollConfiguration.of(context).copyWith(scrollbars: false),
            child: ListView(
              children: [
                for (ShrtcoFavDBModel shrtUrlModel in state.shrtCoUrlFree)
                  FavShrtCoCard(
                    shrtCoUrlModel: shrtUrlModel,
                  ),
                for (ShortUrlFavContainerDBModel shortUrlModel
                    in state.shortUrlsFree)
                  FavCard(
                    shortUrlModel: shortUrlModel,
                  ),
              ],
            ),
          );
        }
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
