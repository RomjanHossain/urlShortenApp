// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/favorite/favorite.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FavoritePage', () {
    group('route', () {
      test('is routable', () {
        expect(FavoritePage.route(), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders FavoriteView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: FavoritePage()));
      expect(find.byType(FavoriteView), findsOneWidget);
    });
  });
}
