// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturlpr/bloc/bloc.dart';

void main() {
  group('ViewshorturlprBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          ViewshorturlprBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final viewshorturlprBloc = ViewshorturlprBloc();
      // expect(viewshorturlprBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<ViewshorturlprBloc, ViewshorturlprState>(
      'CustomViewshorturlprEvent emits nothing',
      build: ViewshorturlprBloc.new,
      act: (bloc) => bloc.add(const CustomViewshorturlprEvent()),
      expect: () => <ViewshorturlprState>[],
    );
  });
}
