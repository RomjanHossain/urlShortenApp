// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/favorite/favorite.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('FavoriteBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => FavoriteBloc(),
          child: MaterialApp(home: FavoriteBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
