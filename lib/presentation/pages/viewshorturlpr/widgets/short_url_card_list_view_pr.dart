import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
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
