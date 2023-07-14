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
  HistoryInitial({required this.segmentButtonEnum}) : super();

  final HistorySegmentButtonEnum segmentButtonEnum;

  @override
  List<Object> get props => [segmentButtonEnum];
}
