import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/history/widgets/history_body.dart';

/// Displays the Body of HistoryView
/// {@endtemplate}
class HistoryView extends StatelessWidget {
  /// {@macro history_view}
  const HistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HistoryBody();
  }
}
