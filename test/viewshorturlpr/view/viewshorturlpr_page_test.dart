// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/viewshorturlpr.dart';

void main() {
  group('ViewshorturlprPage', () {
    group('route', () {
      test('is routable', () {
        expect(ViewshorturlprPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders ViewshorturlprView', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ViewshorturlprPage()));
      expect(find.byType(ViewshorturlprView), findsOneWidget);
    });
  });
}
