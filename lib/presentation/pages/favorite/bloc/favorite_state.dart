part of 'favorite_bloc.dart';

/// FavoriteState description
class FavoriteState extends Equatable {
  /// {@macro favorite_state}
  const FavoriteState({
    this.customProperty = 'Favorite Page',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current FavoriteState with property changes
  FavoriteState copyWith({
    String? customProperty,
  }) {
    return FavoriteState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// The initial state of FavoriteState
class FavoriteInitial extends FavoriteState {
  const FavoriteInitial(
      {required this.shortUrlsFree, required this.shrtCoUrlFree})
      : super();

  /// list of short urls (from local DB)
  final List<ShortUrlFavContainerDBModel> shortUrlsFree;

  /// ShrtcoDBModel
  final List<ShrtcoFavDBModel> shrtCoUrlFree;

  @override
  List<Object> get props => [shortUrlsFree, shrtCoUrlFree];
}
