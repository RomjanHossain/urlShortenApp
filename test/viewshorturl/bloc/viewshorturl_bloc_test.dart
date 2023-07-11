// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/bloc/bloc.dart';

void main() {
  group('ViewshorturlBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          ViewshorturlBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final viewshorturlBloc = ViewshorturlBloc();
      expect(viewshorturlBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<ViewshorturlBloc, ViewshorturlState>(
      'CustomViewshorturlEvent emits nothing',
      build: ViewshorturlBloc.new,
      act: (bloc) => bloc.add(const CustomViewshorturlEvent()),
      expect: () => <ViewshorturlState>[],
    );
  });
}
