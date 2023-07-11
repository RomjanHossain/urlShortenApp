part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

/// Event added when some custom logic happens
class ChangePageEvent extends HomeEvent {
  /// {@macro custom_home_event}
  const ChangePageEvent(this.index);

  /// index
  final int index;
}

// goto view short url page
class GotoViewShortUrlPageEvent extends HomeEvent {
  /// {@macro custom_home_event}
  const GotoViewShortUrlPageEvent(this.context);

  /// url
  final BuildContext context;
}
