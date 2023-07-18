import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shrtco_fav_db_model.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';
import 'package:url_shorten/presentation/pages/favorite/components/fav_shrtco_card_lst_view.dart';

class FavShrtCoCard extends StatelessWidget {
  const FavShrtCoCard({
    super.key,
    required this.shrtCoUrlModel,
  });

  final ShrtcoFavDBModel shrtCoUrlModel;
  @override
  Widget build(BuildContext context) {
    // print('${shortUrlModel.shortLink} -> ${!shortUrlModel.isAlias}');
    return Dismissible(
      key: Key(shrtCoUrlModel.id.toString()),
      child: Card(
        child: BlocConsumer<FavoriteBloc, FavoriteState>(
          listener: (context, state) {},
          builder: (context, FavoriteState state) {
            if (state is FavoriteInitial) {
              return FavShrtCoCardListTile(shrtCoUrlModel: shrtCoUrlModel);
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
