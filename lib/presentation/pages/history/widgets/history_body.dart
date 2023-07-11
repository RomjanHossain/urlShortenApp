import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/history/bloc/bloc.dart';

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
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        return Center(child: Text(state.customProperty));
      },
    );
  }
}
