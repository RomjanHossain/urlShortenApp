part of 'settings_bloc.dart';

/// {@template settings_state}
/// SettingsState description
/// {@endtemplate}
class SettingsState extends Equatable {
  /// {@macro settings_state}
  const SettingsState({
    this.customProperty = 'Settings page',
  });

  /// A description for customProperty
  final String customProperty;

  @override
  List<Object> get props => <Object>[customProperty];

  /// Creates a copy of the current SettingsState with property changes
  SettingsState copyWith({
    String? customProperty,
  }) =>
      SettingsState(
        customProperty: customProperty ?? this.customProperty,
      );
}

/// {@template settings_initial}
/// The initial state of SettingsState
/// {@endtemplate}
class SettingsInitial extends SettingsState {
  /// {@macro settings_initial}
  const SettingsInitial() : super();
}
