import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/history/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/splash/bloc/bloc.dart';

/// {@template splash_body}
/// Body of the SplashPage.
///
/// Add what it does
/// {@endtemplate}
class SplashBody extends StatelessWidget {
  /// {@macro splash_body}
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(
      builder: (context, state) {
        // context.read<HistoryBloc>().add(HistoryInitial(segmentButtonEnum: segmentButtonEnum, shortUrlsFree: shortUrlsFree, shortUrlsPR: shortUrlsPR, shrtCoUrlFree: shrtCoUrlFree))
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
