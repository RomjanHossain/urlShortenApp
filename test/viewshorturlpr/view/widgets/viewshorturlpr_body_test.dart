// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/viewshorturlpr.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ViewshorturlprBody', () {
    testWidgets('renders Text', (tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (context) => ViewshorturlprBloc(),
          child: MaterialApp(home: ViewshorturlprBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
