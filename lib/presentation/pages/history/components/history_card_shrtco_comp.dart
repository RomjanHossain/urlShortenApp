import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
import 'package:url_shorten/presentation/pages/history/bloc/history_bloc.dart';
import 'package:url_shorten/presentation/pages/history/components/history_shrtco_card_list_view.dart';

class HistoryShrtCoCard extends StatelessWidget {
  const HistoryShrtCoCard({
    required this.shrtCoUrlModel,
    super.key,
  });

  final ShrtcoDBModel shrtCoUrlModel;
  @override
  Widget build(BuildContext context) => Dismissible(
        onDismissed: (DismissDirection d) {
          BlocProvider.of<HistoryBloc>(context).add(
            DeleteShrtCoUrlE(shrtCoUrlModel),
          );
        },
        key: Key(shrtCoUrlModel.id.toString()),
        child: Card(
          child: BlocConsumer<HistoryBloc, HistoryState>(
            listener: (BuildContext context, HistoryState state) {},
            builder: (BuildContext context, HistoryState state) {
              if (state is HistoryInitial) {
                return HistoryShrtCoCardListTile(
                  shrtCoUrlModel: shrtCoUrlModel,
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
      );
}
