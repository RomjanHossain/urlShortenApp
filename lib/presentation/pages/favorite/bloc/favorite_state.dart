part of 'favorite_bloc.dart';

/// {@template favorite_state}
/// FavoriteState description
/// {@endtemplate}
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

/// {@template favorite_initial}
/// The initial state of FavoriteState
/// {@endtemplate}
class FavoriteInitial extends FavoriteState {
  /// {@macro favorite_initial}
  const FavoriteInitial() : super();
}
