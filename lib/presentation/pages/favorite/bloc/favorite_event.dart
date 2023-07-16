part of 'favorite_bloc.dart';

abstract class FavoriteEvent extends Equatable {
  const FavoriteEvent();

  @override
  List<Object> get props => [];
}

/// Event added when some custom logic happens
class CustomFavoriteEvent extends FavoriteEvent {
  const CustomFavoriteEvent();
}

/// ADD TO FAV
class AddToFavE extends FavoriteEvent {
  const AddToFavE({required this.shortUrlFavContainerDBModel});
  final ShortUrlFavContainerDBModel shortUrlFavContainerDBModel;
}

/// ADD TO FAV
class AddToShrtFavE extends FavoriteEvent {
  const AddToShrtFavE({required this.shortUrlFavContainerDBModel});
  final ShrtcoFavDBModel shortUrlFavContainerDBModel;
}

/// remove TO FAV

class RemoveFromFavE extends FavoriteEvent {
  const RemoveFromFavE({required this.id});
  final int id;
}

/// remove TO FAV

class RemoveShrtFromFavE extends FavoriteEvent {
  const RemoveShrtFromFavE({required this.id});
  final int id;
}
