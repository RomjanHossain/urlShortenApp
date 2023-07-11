part of 'home_bloc.dart';

/// {@template home_state}
/// HomeState description
/// {@endtemplate}
class HomeState extends Equatable {
  /// {@macro home_state}
  const HomeState({
    this.customProperty = 'Home Page',
  });

  /// A description for customProperty
  final String customProperty;
  @override
  List<Object> get props => [
        customProperty,
      ];

  /// Creates a copy of the current HomeState with property changes
  HomeState copyWith({
    String? customProperty,
  }) {
    return HomeState(
      customProperty: customProperty ?? this.customProperty,
    );
  }
}

/// {@template home_initial}
/// The initial state of HomeState
/// {@endtemplate}
class HomeInitial extends HomeState {
  /// {@macro home_initial}
  HomeInitial() : super();

  // a text controller to control the text field.
  final TextEditingController urlController = TextEditingController();
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

/// Favorite Page
class FavoritePageState extends HomeState {
  /// {@macro home_initial}
  const FavoritePageState() : super();

  // int get index => 3;
}
