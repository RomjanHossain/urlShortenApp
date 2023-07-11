// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';

void main() {
  group('ViewshorturlEvent', () {  
    group('CustomViewshorturlEvent', () {
      test('supports value equality', () {
        expect(
          CustomViewshorturlEvent(),
          equals(const CustomViewshorturlEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomViewshorturlEvent(),
          isNotNull
        );
      });
    });
  });
}
