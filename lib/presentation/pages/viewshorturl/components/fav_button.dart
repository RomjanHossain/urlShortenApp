import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';

class IsFavIconButton extends StatelessWidget {
  const IsFavIconButton({
    required this.url,
    required this.domain,
    required this.originURL,
    super.key,
  });
  final String url;
  final String domain;
  final String originURL;
  // final IsFavoriteUseCases _isFav = IsFavoriteUseCases();

  @override
  Widget build(BuildContext context) =>
      BlocConsumer<FavoriteBloc, FavoriteState>(
        listener: (BuildContext context, FavoriteState state) {},
        builder: (BuildContext context, FavoriteState state) {
          if (state is FavoriteInitial) {
            final bool isFav = state.shortUrlsFree.any(
              (ShortUrlFavContainerDBModel element) => element.shortLink == url,
            );
            return Align(
              alignment: Alignment.topRight,
              child: IconButton.outlined(
                onPressed: () {
                  // state.shortUrlsFree.forEach((e) => print(e.shortLink));

                  if (isFav) {
                    final ShortUrlFavContainerDBModel d = state.shortUrlsFree
                        .where(
                          (ShortUrlFavContainerDBModel element) =>
                              element.shortLink == url,
                        )
                        .first;
                    context.read<FavoriteBloc>().add(
                          RemoveFromFavE(
                            id: d.id,
                          ),
                        );
                  } else {
                    context.read<FavoriteBloc>().add(
                          AddToFavE(
                            shortUrlFavContainerDBModel:
                                ShortUrlFavContainerDBModel()
                                  ..domain = domain
                                  ..originalLink = originURL
                                  ..shortLink = url,
                          ),
                        );
                  }
                },
                icon: isFav
                    ? const Icon(Icons.favorite_rounded)
                    : const Icon(Icons.favorite_border_rounded),
              ),
            );
          }
          return const SizedBox.shrink();
        },
      );
}
