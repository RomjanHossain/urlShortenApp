// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/splash/splash.dart';

void main() {
  group('SplashBody', () {
    testWidgets('renders Text', (WidgetTester tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (BuildContext context) => SplashBloc(),
          child: MaterialApp(home: SplashBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
