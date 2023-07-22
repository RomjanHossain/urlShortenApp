import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';
import 'package:url_shorten/presentation/pages/favorite/components/fav_short_card_list_view.dart';

class FavCard extends StatelessWidget {
  const FavCard({
    required this.shortUrlModel,
    super.key,
  });

  final ShortUrlFavContainerDBModel shortUrlModel;
  @override
  Widget build(BuildContext context) => Dismissible(
        key: Key(shortUrlModel.id.toString()),
        onDismissed: (_) {
          context
              .read<FavoriteBloc>()
              .add(RemoveFromFavE(id: shortUrlModel.id));
        },
        child: Card(
          child: BlocConsumer<FavoriteBloc, FavoriteState>(
            listener: (BuildContext context, FavoriteState state) {},
            builder: (BuildContext context, FavoriteState state) {
              if (state is FavoriteInitial) {
                return FavCardListTile(shortUrlModel: shortUrlModel);
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      );
}
