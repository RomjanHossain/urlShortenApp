import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/domain/entities/cleanuri_entities.dart';
import 'package:url_shorten/domain/entities/gotiny_entities.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:url_shorten/presentation/pages/home/bloc/home_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/viewshorturl_bloc.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/copy_icon_button.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_card.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_small_card.dart';

class ShortUrlCardListView extends StatelessWidget {
  const ShortUrlCardListView({
    super.key,
    required this.state,
  });

  final ViewshorturlSuccess state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.furls.length + 1,
      itemBuilder: (context, index) {
        if (index == state.furls.length) {
          var _homeState = context.read<HomeBloc>().state;
          return Column(
            children: [
              const Divider(
                endIndent: 20,
                indent: 20,
              ),
              Card(
                child: ListTile(
                  title: const Text('Original Link'),
                  subtitle: ShrtcoSmllCard(
                    txt: _homeState is HomeInitial
                        ? _homeState.urlController.text
                        : '',
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          );
        }
        Object data = state.furls[index];
        if (data.runtimeType == ShrtcoEntity) {
          data = data as ShrtcoEntity;
          return ShrtCoCard(
            shrtcoEntity: data,
          );
        }
        if (data.runtimeType == CleanUriEntities) {
          data = data as CleanUriEntities;
          return Card(
            child: ListTile(
              title: const Text('CleanUri'),
              subtitle: ShrtcoSmllCard(
                txt: data.resultUrl,
              ),
            ),
          );
        }
        if (data.runtimeType == GotinyEntity) {
          data = data as GotinyEntity;
          return Card(
            child: ListTile(
              title: const Text('Gotiny'),
              subtitle: ShrtcoSmllCard(txt: 'gotiny.cc/${data.code}'),
            ),
          );
        }
        if (data.runtimeType == UlvisEntity) {
          data = data as UlvisEntity;
          return Card(
            child: ListTile(
              title: const Text('Ulvis'),
              subtitle: ShrtcoSmllCard(txt: data.data.url),
            ),
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
              onPlay: (controller) => controller.repeat(),
            )
            .shimmer(
              delay: 500.milliseconds,
              angle: 2,
              color: Theme.of(context).colorScheme.secondary,
              curve: Curves.easeIn,
              duration: 800.milliseconds,
            );
      },
    );
  }
}
