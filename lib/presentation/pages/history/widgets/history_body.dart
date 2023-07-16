import 'package:flutter/material.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
import 'package:url_shorten/presentation/pages/history/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/history/components/history_card_comp.dart';
import 'package:url_shorten/presentation/pages/history/components/history_card_shrtco_comp.dart';

/// {@template history_body}
/// Body of the HistoryPage.
///
/// Add what it does
/// {@endtemplate}
class HistoryBody extends StatelessWidget {
  /// {@macro history_body}
  const HistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HistoryBloc, HistoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return ListView(
          children: [
            /// segment button

            if (state is HistoryInitial) ...[
              Center(
                child: SegmentedButton(
                    segments: const <ButtonSegment<HistorySegmentButtonEnum>>[
                      ButtonSegment(
                        label: Text('Short URL'),
                        value: HistorySegmentButtonEnum.shorturl,
                      ),
                      ButtonSegment(
                        label: Text('Alias URL'),
                        value: HistorySegmentButtonEnum.aliasurl,
                      ),
                    ],
                    selected: <HistorySegmentButtonEnum>{
                      state.segmentButtonEnum
                    },
                    onSelectionChanged:
                        (Set<HistorySegmentButtonEnum> newSelection) {
                      context
                          .read<HistoryBloc>()
                          .add(ChangeSegmentBtnE(newSelection.first));
                    }),
                // state.shortUrlsFree.forEach((element) { })
              ),
              for (ShortUrlContainerDBModel shortUrlModel
                  in state.shortUrlsFree)
                HistoryCard(
                  shortUrlModel: shortUrlModel,
                ),
              for (ShrtcoDBModel shortUrlModel in state.shrtCoUrlFree)
                Visibility(
                  visible: state.segmentButtonEnum ==
                      HistorySegmentButtonEnum.shorturl,
                  child: HistoryShrtCoCard(
                    shrtCoUrlModel: shortUrlModel,
                  ),
                )
            ]
          ],
        );
      },
    );
  }
}
