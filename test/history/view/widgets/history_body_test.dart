// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/history/history.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HistoryBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => HistoryBloc(),
          child: MaterialApp(home: HistoryBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
