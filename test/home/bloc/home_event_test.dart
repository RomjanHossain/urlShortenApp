// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/home/bloc/bloc.dart';

void main() {
  group('HomeEvent', () {
    group('CustomHomeEvent', () {
      test('supports value equality', () {
        expect(
          ChangePageEvent(1),
          equals(ChangePageEvent(1)),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(const ChangePageEvent(1), isNotNull);
      });
    });
  });
}
