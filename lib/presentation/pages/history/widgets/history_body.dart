import 'package:flutter/material.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
import 'package:url_shorten/presentation/pages/history/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/home/bloc/bloc.dart';

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
    return Column(
      children: [
        /// segment button
        Center(
          child: BlocConsumer<HistoryBloc, HistoryState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is HistoryInitial) {
                return SegmentedButton(
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
                    });
              }
              return const SizedBox();
            },
          ),
        ),
      ],
    );
  }
}
