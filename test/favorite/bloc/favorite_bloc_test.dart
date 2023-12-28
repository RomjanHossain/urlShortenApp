// ignore_for_file: prefer_const_constructors

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:url_shorten/presentation/pages/favorite/bloc/bloc.dart';

void main() {
  group('FavoriteBloc', () {
    group('constructor', () {
      test('can be instantiated', () {
        expect(
          FavoriteBloc(),
          isNotNull,
        );
      });
    });

    test('initial state has default value for customProperty', () {
      final FavoriteBloc favoriteBloc = FavoriteBloc();
      expect(favoriteBloc.state.customProperty, equals('Default Value'));
    });

    blocTest<FavoriteBloc, FavoriteState>(
      'CustomFavoriteEvent emits nothing',
      build: FavoriteBloc.new,
      act: (FavoriteBloc bloc) => bloc.add(const CustomFavoriteEvent()),
      expect: () => <FavoriteState>[],
    );
  });
}
