// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/viewshorturl.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ViewshorturlPage', () {
    group('route', () {
      test('is routable', () {
        expect(ViewshorturlPage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders ViewshorturlView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: ViewshorturlPage()));
      expect(find.byType(ViewshorturlView), findsOneWidget);
    });
  });
}
