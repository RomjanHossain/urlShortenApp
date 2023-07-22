import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
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
  Widget build(BuildContext context) => BlocBuilder<SplashBloc, SplashState>(
        builder: (BuildContext context, SplashState state) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Image.asset(
                'logo/logo.png',
                fit: BoxFit.contain,
                width: 150,
                height: 150,
              ).animate().moveX(
                    duration: 2.seconds,
                  ),
            ),
            Center(
              child: Text(
                'URL Shortener',
                style: Theme.of(context).textTheme.headlineLarge,
              ).animate().moveY(
                    duration: 3.seconds,
                  ),
            ),
          ],
        ),
      );
}
