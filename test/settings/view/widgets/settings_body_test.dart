// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/settings/settings.dart';

void main() {
  group('SettingsBody', () {
    testWidgets('renders Text', (WidgetTester tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (BuildContext context) => SettingsBloc(),
          child: MaterialApp(home: SettingsBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
