// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/bloc.dart';

void main() {
  group('FavoriteEvent', () {  
    group('CustomFavoriteEvent', () {
      test('supports value equality', () {
        expect(
          CustomFavoriteEvent(),
          equals(const CustomFavoriteEvent()),
        );
      });
    });
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const CustomFavoriteEvent(),
          isNotNull,
        );
      });
    });
  });
}
