import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/presentation/pages/history/bloc/history_bloc.dart';
import 'package:url_shorten/presentation/pages/history/components/history_card_list_view.dart';

class HistoryCard extends StatelessWidget {
  const HistoryCard({
    super.key,
    required this.shortUrlModel,
  });

  final ShortUrlContainerDBModel shortUrlModel;
  @override
  Widget build(BuildContext context) {
    // print('${shortUrlModel.shortLink} -> ${!shortUrlModel.isAlias}');
    return Dismissible(
      key: Key(shortUrlModel.id.toString()),
      onDismissed: (direction) {
        BlocProvider.of<HistoryBloc>(context).add(
          DeleteShortUrlE(shortUrlModel),
        );
      },
      child: Card(
        child: BlocConsumer<HistoryBloc, HistoryState>(
          listener: (context, state) {},
          builder: (context, HistoryState state) {
            if (state is HistoryInitial) {
              if (state.segmentButtonEnum ==
                  HistorySegmentButtonEnum.shorturl) {
                return Visibility(
                    visible: shortUrlModel.isAlias == false,
                    child: HistoryCardListTile(shortUrlModel: shortUrlModel));
              } else {
                return Visibility(
                    visible: shortUrlModel.isAlias == true,
                    child: HistoryCardListTile(shortUrlModel: shortUrlModel));
              }
            }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
