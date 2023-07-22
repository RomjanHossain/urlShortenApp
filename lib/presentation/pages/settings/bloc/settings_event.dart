part of 'settings_bloc.dart';

abstract class SettingsEvent extends Equatable {
  const SettingsEvent();

  @override
  List<Object> get props => <Object>[];
}

/// {@template custom_settings_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomSettingsEvent extends SettingsEvent {
  /// {@macro custom_settings_event}
  const CustomSettingsEvent();
}

/// class to delete all history
class DeleteAllHistoryE extends SettingsEvent {
  const DeleteAllHistoryE();
}

/// class to delete all fav
class DeleteAllFavE extends SettingsEvent {
  const DeleteAllFavE();
}

/// view repo
class ViewRepoE extends SettingsEvent {
  const ViewRepoE();
}

/// view author profile
class ViewAuthorE extends SettingsEvent {
  const ViewAuthorE();
}

/// view privacy policy
class ViewPrivacyE extends SettingsEvent {
  const ViewPrivacyE();
}

/// view terms of service
class ViewTermsE extends SettingsEvent {
  const ViewTermsE();
}
