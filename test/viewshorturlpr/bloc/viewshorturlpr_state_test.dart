// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/bloc.dart';

void main() {
  group('ViewshorturlprState', () {
    test('supports value equality', () {
      expect(
        ViewshorturlprState(),
        equals(
          const ViewshorturlprState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const ViewshorturlprState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const ViewshorturlprState viewshorturlprState = ViewshorturlprState(
              // customProperty: 'My property',
              );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const ViewshorturlprState viewshorturlprState = ViewshorturlprState(
            customProperty: 'My property',
          );
          final ViewshorturlprState otherViewshorturlprState = ViewshorturlprState(
            customProperty: 'My property 2',
          );
          expect(viewshorturlprState, isNot(equals(otherViewshorturlprState)));

          expect(
            viewshorturlprState.copyWith(
              customProperty: otherViewshorturlprState.customProperty,
            ),
            equals(otherViewshorturlprState),
          );
        },
      );
    });
  });
}
