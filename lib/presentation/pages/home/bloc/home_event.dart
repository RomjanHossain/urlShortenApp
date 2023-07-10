part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_home_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class ChangePageEvent extends HomeEvent {
  /// {@macro custom_home_event}
  const ChangePageEvent(this.index);

  /// index
  final int index;
}
