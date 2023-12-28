// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/favorite/favorite.dart';

void main() {
  group('FavoritePage', () {
    group('route', () {
      test('is routable', () {
        expect(FavoritePage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders FavoriteView', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: FavoritePage()));
      expect(find.byType(FavoriteView), findsOneWidget);
    });
  });
}
