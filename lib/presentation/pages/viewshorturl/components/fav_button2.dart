import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shrtco_fav_db_model.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/favorite_bloc.dart';

class IsFavIconButton2 extends StatelessWidget {
  const IsFavIconButton2({
    super.key,
    required this.url1,
    required this.url2,
    required this.url3,
    required this.domain,
    required this.originURL,
  });
  final String url1;
  final String url2;
  final String url3;
  final String domain;
  final String originURL;
  // final IsFavoriteUseCases _isFav = IsFavoriteUseCases();

  @override
  Widget build(BuildContext context) {
    final favState = context.read<FavoriteBloc>().state;

    if (favState is FavoriteInitial) {
      final isFav2 = favState.shrtCoUrlFree.any((element) {
        return (element.shrtLink1 == url1) ||
            (element.shrtLink2 == url2) ||
            (element.shrtLink3 == url3);
      });
      return Align(
        alignment: Alignment.topRight,
        child: IconButton.outlined(
          onPressed: () {
            if (isFav2) {
              ShrtcoFavDBModel d = favState.shrtCoUrlFree.where((element) {
                return (element.shrtLink1 == url1) ||
                    (element.shrtLink2 == url2) ||
                    (element.shrtLink3 == url3);
              }).first;
              context.read<FavoriteBloc>().add(
                    RemoveShrtFromFavE(
                      id: d.id,
                    ),
                  );
            } else {
              context.read<FavoriteBloc>().add(
                    AddToShrtFavE(
                        shortUrlFavContainerDBModel: ShrtcoFavDBModel()
                          ..originalLink = originURL
                          ..shrtLink1 = url1
                          ..shrtLink2 = url2
                          ..shrtLink3 = url3),
                  );
            }
            // context.read<FavoriteBloc>().add();
            // ShortUrlFavContainerDBModel()
            //   ..domain = domain
            //   ..shortLink = url
            //   ..originalLink = originURL,
          },
          icon: isFav2
              ? const Icon(Icons.favorite_rounded)
              : const Icon(Icons.favorite_border_rounded),
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
