part of 'history_bloc.dart';

/// {@template history_state}
/// HistoryState description
/// {@endtemplate}
class HistoryState extends Equatable {
  /// {@macro history_state}
  const HistoryState({
    this.customProperty = 'History Page',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => [customProperty];

  /// Creates a copy of the current HistoryState with property changes
  HistoryState copyWith({
    String? customProperty,
  }) {
    return HistoryState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template history_initial}
/// The initial state of HistoryState
/// {@endtemplate}
class HistoryInitial extends HistoryState {
  /// {@macro history_initial}
  const HistoryInitial() : super();
}
