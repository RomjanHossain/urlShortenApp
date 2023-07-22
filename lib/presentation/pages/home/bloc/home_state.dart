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
  List<Object> get props => <Object>[
        customProperty,
      ];

  /// Creates a copy of the current HomeState with property changes
  HomeState copyWith({
    String? customProperty,
  }) =>
      HomeState(
        customProperty: customProperty ?? this.customProperty,
      );
}

/// {@template home_initial}
/// The initial state of HomeState
/// {@endtemplate}
class HomeInitial extends HomeState {
  /// {@macro home_initial}
  HomeInitial() : super();

  // a text controller to control the text field.
  final TextEditingController urlController = TextEditingController();

  // @override
  // List<Object> get props => [
  //       urlController.text,
  //     ];
}

/// Settings Page
class SettingPageState extends HomeState {
  /// {@macro home_initial}
  const SettingPageState() : super();
}

/// History Page
class HistoryPageState extends HomeState {
  /// {@macro home_initial}
  const HistoryPageState() : super();
}

/// Favorite Page
class FavoritePageState extends HomeState {
  /// {@macro home_initial}
  const FavoritePageState() : super();
}
