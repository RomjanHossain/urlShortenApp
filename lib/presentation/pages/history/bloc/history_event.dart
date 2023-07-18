part of 'history_bloc.dart';

abstract class HistoryEvent extends Equatable {
  const HistoryEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_history_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class ChangeSegmentBtnE extends HistoryEvent {
  /// {@macro custom_history_event}
  const ChangeSegmentBtnE(this.segmentButtonEnum);

  final HistorySegmentButtonEnum segmentButtonEnum;
}

class DeleteShortUrlE extends HistoryEvent {
  const DeleteShortUrlE(this.shortUrlContainerDBModel);

  final ShortUrlContainerDBModel shortUrlContainerDBModel;
}

class DeleteShrtCoUrlE extends HistoryEvent {
  const DeleteShrtCoUrlE(this.shrtcoDBModel);

  final ShrtcoDBModel shrtcoDBModel;
}
