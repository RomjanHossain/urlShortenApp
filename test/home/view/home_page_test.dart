// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/home/home.dart';

void main() {
  group('HomePage', () {
    group('route', () {
      test('is routable', () {
        expect(HomePage(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders HomeView', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: HomePage()));
      expect(find.byType(HomeView), findsOneWidget);
    });
  });
}
