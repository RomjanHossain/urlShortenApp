part of 'home_bloc.dart';

/// {@template home_state}
/// HomeState description
/// {@endtemplate}
class HomeState extends Equatable {
  /// {@macro home_state}
  const HomeState({
    this.customProperty = 'Home Page',
    this.index = 0,
  });

  /// A description for customProperty
  final String customProperty;
  final int index;
  @override
  List<Object> get props => [customProperty, index];

  /// Creates a copy of the current HomeState with property changes
  HomeState copyWith({
    String? customProperty,
    int? index,
  }) {
    return HomeState(
      customProperty: customProperty ?? this.customProperty,
      index: index ?? this.index,
    );
  }
}

/// {@template home_initial}
/// The initial state of HomeState
/// {@endtemplate}
class HomeInitial extends HomeState {
  /// {@macro home_initial}
  const HomeInitial() : super();

  // int get index => 0;
}

/// Settings Page
class SettingPageState extends HomeState {
  /// {@macro home_initial}
  const SettingPageState() : super();

  // int get index => 1;
}

/// History Page
class HistoryPageState extends HomeState {
  /// {@macro home_initial}
  const HistoryPageState() : super();

  // int get index => 2;
}
