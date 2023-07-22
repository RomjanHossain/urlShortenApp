import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_shorten/domain/entities/cleanuri_entities.dart';
import 'package:url_shorten/domain/entities/error_entities.dart';
import 'package:url_shorten/domain/entities/gotiny_entities.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/viewshorturl_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/components/fav_button.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/components/fav_button2.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/components/shrt_card.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_small_card.dart';

class ShortUrlCardListView extends StatelessWidget {
  const ShortUrlCardListView({
    required this.state,
    super.key,
  });

  final ViewshorturlSuccess state;

  @override
  Widget build(BuildContext context) => ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: ListView.builder(
          itemCount: state.furls.length + 1,
          itemBuilder: (BuildContext context, int index) {
            final HomeState homeState = context.read<HomeBloc>().state;
            if (index == state.furls.length) {
              return Column(
                children: <Widget>[
                  const Divider(
                    endIndent: 20,
                    indent: 20,
                  ),
                  Card(
                    child: ListTile(
                      title: const Text('Original Link'),
                      subtitle: ShrtcoSmllCard(
                        txt: homeState is HomeInitial
                            ? homeState.urlController.text
                            : '',
                      ),
                    ),
                  ),
                  const SizedBox(height: 100),
                ],
              );
            }
            Object data = state.furls[index];
            if (data.runtimeType == ErrorModel) {
              data = data as ErrorModel;

              return Card(
                child: ListTile(
                  title: Text('Errors ${data.domain}'),
                  subtitle: ShrtcoSmllCard(txt: data.message),
                ),
              );
            }
            if (data.runtimeType == ShrtcoEntity) {
              data = data as ShrtcoEntity;
              return Stack(
                children: <Widget>[
                  ShrtCoCard(
                    shrtcoEntity: data,
                  ),
                  IsFavIconButton2(
                    url1: data.shortLink,
                    url2: data.shortLink2,
                    url3: data.shortLink3,
                    domain: 'ShrtCo',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
            if (data.runtimeType == CleanUriEntities) {
              data = data as CleanUriEntities;
              return Stack(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: const Text('CleanUri'),
                      subtitle: ShrtcoSmllCard(
                        txt: data.resultUrl,
                      ),
                    ),
                  ),
                  IsFavIconButton(
                    url: data.resultUrl,
                    domain: 'CleanUri',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
            if (data.runtimeType == GotinyEntity) {
              data = data as GotinyEntity;
              return Stack(
                children: <Widget>[
                  Card(
                    child: ListTile(
                      title: const Text('Gotiny'),
                      subtitle: ShrtcoSmllCard(txt: 'gotiny.cc/${data.code}'),
                    ),
                  ),
                  IsFavIconButton(
                    url: 'gotiny.cc/${data.code}',
                    domain: 'Gotiny',
                    originURL: homeState is HomeInitial
                        ? homeState.urlController.text
                        : '',
                  ),
                ],
              );
            }
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
                    domain: 'Ulvis',
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
