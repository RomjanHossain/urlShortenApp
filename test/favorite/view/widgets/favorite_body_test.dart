// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/favorite/favorite.dart';

void main() {
  group('FavoriteBody', () {
    testWidgets('renders Text', (WidgetTester tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (BuildContext context) => FavoriteBloc(),
          child: MaterialApp(home: FavoriteBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
