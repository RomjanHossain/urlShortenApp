import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';

class IsFavIconButton extends StatelessWidget {
  const IsFavIconButton({
    super.key,
    required this.url,
    required this.domain,
    required this.originURL,
  });
  final String url;
  final String domain;
  final String originURL;
  // final IsFavoriteUseCases _isFav = IsFavoriteUseCases();

  @override
  Widget build(BuildContext context) {
    // final favState = context.read<FavoriteBloc>().state;

    return BlocConsumer<FavoriteBloc, FavoriteState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is FavoriteInitial) {
            final isFav = state.shortUrlsFree.any((element) {
              return element.shortLink == url;
            });
            return Align(
              alignment: Alignment.topRight,
              child: IconButton.outlined(
                onPressed: () {
                  // state.shortUrlsFree.forEach((e) => print(e.shortLink));

                  if (isFav) {
                    ShortUrlFavContainerDBModel d = state.shortUrlsFree
                        .where((element) => element.shortLink == url)
                        .first;
                    context.read<FavoriteBloc>().add(
                          RemoveFromFavE(
                            id: d.id,
                          ),
                        );
                  } else {
                    context.read<FavoriteBloc>().add(AddToFavE(
                        shortUrlFavContainerDBModel:
                            ShortUrlFavContainerDBModel()
                              ..domain = domain
                              ..originalLink = originURL
                              ..shortLink = url));
                  }
                },
                icon: isFav
                    ? const Icon(Icons.favorite_rounded)
                    : const Icon(Icons.favorite_border_rounded),
              ),
            );
          }
          return const SizedBox.shrink();
        });

    // return const SizedBox.shrink();
  }
}
