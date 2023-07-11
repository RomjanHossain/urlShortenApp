// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/bloc.dart';

void main() {
  group('FavoriteState', () {
    test('supports value equality', () {
      expect(
        FavoriteState(),
        equals(
          const FavoriteState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const FavoriteState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const favoriteState = FavoriteState(
            customProperty: 'My property',
          );
          expect(
            favoriteState.copyWith(),
            equals(favoriteState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const favoriteState = FavoriteState(
            customProperty: 'My property',
          );
          final otherFavoriteState = FavoriteState(
            customProperty: 'My property 2',
          );
          expect(favoriteState, isNot(equals(otherFavoriteState)));

          expect(
            favoriteState.copyWith(
              customProperty: otherFavoriteState.customProperty,
            ),
            equals(otherFavoriteState),
          );
        },
      );
    });
  });
}
