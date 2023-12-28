// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';

void main() {
  group('ViewshorturlState', () {
    test('supports value equality', () {
      expect(
        ViewshorturlState(),
        equals(
          const ViewshorturlState(),
        ),
      );
    });

    group('constructor', () {
      test('can be instantiated', () {
        expect(
          const ViewshorturlState(),
          isNotNull,
        );
      });
    });

    group('copyWith', () {
      test(
        'copies correctly '
        'when no argument specified',
        () {
          const ViewshorturlState viewshorturlState = ViewshorturlState(
            customProperty: 'My property',
          );
          expect(
            viewshorturlState.copyWith(),
            equals(viewshorturlState),
          );
        },
      );

      test(
        'copies correctly '
        'when all arguments specified',
        () {
          const ViewshorturlState viewshorturlState = ViewshorturlState(
            customProperty: 'My property',
          );
          final ViewshorturlState otherViewshorturlState = ViewshorturlState(
            customProperty: 'My property 2',
          );
          expect(viewshorturlState, isNot(equals(otherViewshorturlState)));

          expect(
            viewshorturlState.copyWith(
              customProperty: otherViewshorturlState.customProperty,
            ),
            equals(otherViewshorturlState),
          );
        },
      );
    });
  });
}
