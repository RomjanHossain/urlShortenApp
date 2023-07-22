import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/domain/entities/error_entities.dart';
import 'package:url_shorten/domain/entities/rebrandly_entities.dart';
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:url_shorten/domain/entities/urlbae_entities.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/components/fav_button.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_small_card.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/viewshorturlpr_bloc.dart';

class ShortUrlCardListViewPr extends StatelessWidget {
  const ShortUrlCardListViewPr({
    required this.state,
    super.key,
  });

  final ViewshorturlPremiumSuccess state;

  @override
  Widget build(BuildContext context) => ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          itemCount: state.surls.length + 1,
          itemBuilder: (BuildContext context, int index) {
            final HomeState homeState = context.read<HomeBloc>().state;
            if (index == state.surls.length) {
              return const SizedBox(height: 100);
            }
            Object data = state.surls[index];

            if (data.runtimeType == UlvisEntity) {
              data = data as UlvisEntity;
              return Stack(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: const Text('Ulvis'),
                      subtitle: ShrtcoSmllCard(txt: data.data.url),
                    ),
                  ),
                  IsFavIconButton(
                    url: data.data.url,
                    domain: 'UrlBae',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
            if (data.runtimeType == RebrandlyEntities) {
              data = data as RebrandlyEntities;
              return Stack(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: const Text('Rebrandly'),
                      subtitle: ShrtcoSmllCard(txt: data.shortURL),
                    ),
                  ),
                  IsFavIconButton(
                    url: data.shortURL,
                    domain: 'UrlBae',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
            if (data.runtimeType == TinyUrlEntities) {
              data = data as TinyUrlEntities;

              return Stack(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: const Text('TinyUrl'),
                      subtitle: ShrtcoSmllCard(txt: data.data?.tinyUrl ?? ""),
                    ),
                  ),
                  IsFavIconButton(
                    url: data.data?.tinyUrl ?? "",
                    domain: 'UrlBae',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
            if (data.runtimeType == ErrorModel) {
              data = data as ErrorModel;

              return Card(
                child: ListTile(
                  title: Text('Errors ${data.domain}'),
                  subtitle: ShrtcoSmllCard(txt: data.message),
                ),
              );
            }
            if (data.runtimeType == UrlBaeEntity) {
              data = data as UrlBaeEntity;
              // ErrorModel
              return Stack(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: const Text('UrlBae'),
                      subtitle: ShrtcoSmllCard(
                        txt: data.shortUrl ?? 'Empty',
                      ),
                    ),
                  ),
                  IsFavIconButton(
                    url: data.shortUrl ?? 'Empty',
                    domain: 'UrlBae',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
            return const Card(
              margin: EdgeInsets.all(8),
              child: ListTile(
                title: Text('Nah'),
                subtitle: Text('Hah 2'),
              ),
            )
                .animate(
                  onPlay: (AnimationController controller) =>
                      controller.repeat(),
                )
                .shimmer(
                  delay: 500.milliseconds,
                  angle: 2,
                  color: Theme.of(context).colorScheme.secondary,
                  curve: Curves.easeIn,
                  duration: 800.milliseconds,
                );
          },
        ),
      );
}
