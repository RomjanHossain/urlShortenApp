// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/viewshorturl.dart';

void main() {
  group('ViewshorturlBody', () {
    testWidgets('renders Text', (WidgetTester tester) async { 
      await tester.pumpWidget(
        BlocProvider(
          create: (BuildContext context) => ViewshorturlBloc(),
          child: MaterialApp(home: ViewshorturlBody()),
        ),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
