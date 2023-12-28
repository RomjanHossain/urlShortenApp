// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/viewshorturlpr.dart';

void main() {
  group('ViewshorturlprBody', () {
    testWidgets('renders Text', (WidgetTester tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (BuildContext context) => ViewshorturlprBloc(),
          child: MaterialApp(home: ViewshorturlprBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
