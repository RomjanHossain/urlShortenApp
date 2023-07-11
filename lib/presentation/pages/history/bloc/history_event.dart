part of 'history_bloc.dart';

abstract class HistoryEvent  extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];

}

/// {@template custom_history_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomHistoryEvent extends HistoryEvent {
  /// {@macro custom_history_event}
  const CustomHistoryEvent();
}
