// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/bloc.dart';

void main() {
  group('ViewshorturlprEvent', () {  
    group('CustomViewshorturlprEvent', () {
      test('supports value equality', () {
        expect(
          CustomViewshorturlprEvent(),
          equals(const CustomViewshorturlprEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomViewshorturlprEvent(),
          isNotNull,
        );
      });
    });
  });
}
