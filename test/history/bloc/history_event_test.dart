// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HistoryEvent', () {  
    group('CustomHistoryEvent', () {
      test('supports value equality', () {
        expect(
          CustomHistoryEvent(),
          equals(const CustomHistoryEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomHistoryEvent(),
          isNotNull,
        );
      });
    });
  });
}
