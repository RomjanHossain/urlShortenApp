import 'package:flutter/material.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/widgets/shrt_small_card.dart';

class ShrtCoCard extends StatelessWidget {
  const ShrtCoCard({
    required this.shrtcoEntity,
    super.key,
  });

  /// shrt entity
  final ShrtcoEntity shrtcoEntity;
  @override
  Widget build(BuildContext context) => Card(
        margin: const EdgeInsets.all(8),
        child: ListTile(
          title: const Text('ShrtCo'),
          subtitle: Column(
            mainAxisSize: MainAxisSize.min,
            children: <ShrtcoSmllCard>[
              ShrtcoSmllCard(txt: shrtcoEntity.shortLink),
              ShrtcoSmllCard(txt: shrtcoEntity.shortLink2),
              ShrtcoSmllCard(txt: shrtcoEntity.shortLink3),
            ],
          ),
        ),
      );
}
