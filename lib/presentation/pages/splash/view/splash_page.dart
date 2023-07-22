import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/splash/bloc/bloc.dart';
import 'package:url_shorten/presentation/pages/splash/widgets/splash_body.dart';

/// {@template splash_page}
/// A description for SplashPage
/// {@endtemplate}
class SplashPage extends StatelessWidget {
  /// {@macro splash_page}
  const SplashPage({super.key});

  /// The static route for SplashPage
  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (_) => const SplashPage());

  @override
  Widget build(BuildContext context) => BlocProvider<SplashBloc>(
        create: (BuildContext context) =>
            SplashBloc()..add(InitSplashEvent(context)),
        child: const Scaffold(
          // backgroundColor: Color(0xffbe63f9),
          body: SplashView(),
        ),
      );
}

/// {@template splash_view}
/// Displays the Body of SplashView
/// {@endtemplate}
class SplashView extends StatelessWidget {
  /// {@macro splash_view}
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) => const SplashBody();
}
