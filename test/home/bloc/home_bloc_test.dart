// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/home/bloc/bloc.dart';

void main() {
  group('HomeBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          HomeBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final HomeBloc homeBloc = HomeBloc();
      expect(homeBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<HomeBloc, HomeState>(
      'CustomHomeEvent emits nothing',
      build: HomeBloc.new,
      act: (HomeBloc bloc) => bloc.add(ChangePageEvent(1)),
      expect: () => <HomeState>[],
    );
  });
}
