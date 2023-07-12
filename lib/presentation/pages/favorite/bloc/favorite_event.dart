part of 'favorite_bloc.dart';

abstract class FavoriteEvent  extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_favorite_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomFavoriteEvent extends FavoriteEvent {
  /// {@macro custom_favorite_event}
  const CustomFavoriteEvent();
}
