import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_shorten/domain/entities/error_entities.dart';
import 'package:url_shorten/domain/entities/rebrandly_entities.dart';
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:url_shorten/domain/entities/urlbae_entities.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_small_card.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/viewshorturlpr_bloc.dart';

class ShortUrlCardListViewPr extends StatelessWidget {
  const ShortUrlCardListViewPr({
    super.key,
    required this.state,
  });

  final ViewshorturlPremiumSuccess state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: state.surls.length + 1,
      itemBuilder: (context, index) {
        if (index == state.surls.length) {
          return const SizedBox(height: 100);
        }
        Object data = state.surls[index];

        print('$index ${data.runtimeType}');
        if (data.runtimeType == UlvisEntity) {
          data = data as UlvisEntity;
          return Card(
            child: ListTile(
              title: const Text('Ulvis'),
              subtitle: ShrtcoSmllCard(txt: data.data.url),
            ),
          );
        }
        if (data.runtimeType == RebrandlyEntities) {
          data = data as RebrandlyEntities;
          return Card(
            child: ListTile(
              title: const Text('Rebrandly'),
              subtitle: ShrtcoSmllCard(txt: data.shortURL),
            ),
          );
        }
        if (data.runtimeType == TinyUrlEntities) {
          data = data as TinyUrlEntities;

          return Card(
            child: ListTile(
              title: const Text('TinyUrl'),
              subtitle: ShrtcoSmllCard(txt: data.data?.tinyUrl ?? ""),
            ),
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
          return Card(
            child: ListTile(
              title: const Text('UrlBae'),
              subtitle: ShrtcoSmllCard(
                txt: data.shortUrl ?? 'Empty',
              ),
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
