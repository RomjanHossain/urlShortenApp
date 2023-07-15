part of 'history_bloc.dart';

/// HistoryState description

class HistoryState extends Equatable {
  @override
  List<Object> get props => [];
}

/// {@template history_initial}
/// The initial state of HistoryState
/// {@endtemplate}
class HistoryInitial extends HistoryState {
  HistoryInitial({
    required this.segmentButtonEnum,
    required this.shortUrlsFree,
    required this.shrtCoUrlFree,
  }) : super();

  final HistorySegmentButtonEnum segmentButtonEnum;

  /// list of short urls (from local DB)
  final List<ShortUrlContainerDBModel> shortUrlsFree;

  /// ShrtcoDBModel
  final List<ShrtcoDBModel> shrtCoUrlFree;

  @override
  List<Object> get props => [
        segmentButtonEnum,
        shortUrlsFree,
      ];
}
