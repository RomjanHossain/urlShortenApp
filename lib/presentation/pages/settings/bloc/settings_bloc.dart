import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_shorten/core/params/settings_page_params.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc() : super(const SettingsInitial()) {
    on<CustomSettingsEvent>(_onCustomSettingsEvent);
    on<DeleteAllHistoryE>(_onDeleteAllHistory);
    on<DeleteAllFavE>(_onDeleteAllFav);
    on<ViewRepoE>(_onViewRepo);
    on<ViewAuthorE>(_onViewAuthor);
  }
  final ShortDBImplementation _shortDBImplementation = ShortDBImplementation();

  FutureOr<void> _onCustomSettingsEvent(
    CustomSettingsEvent event,
    Emitter<SettingsState> emit,
  ) {}

  /// delete all history
  FutureOr<void> _onDeleteAllHistory(
    DeleteAllHistoryE event,
    Emitter<SettingsState> emit,
  ) async {
    await _shortDBImplementation.removeAllHistory();
    // emit(const DeleteAllHistoryS());
  }

  /// delete all fav
  FutureOr<void> _onDeleteAllFav(
    DeleteAllFavE event,
    Emitter<SettingsState> emit,
  ) async {
    await _shortDBImplementation.removeAllFav();
    // emit(const DeleteAllFavS());
  }

  /// view repo
  FutureOr<void> _onViewRepo(
    ViewRepoE event,
    Emitter<SettingsState> emit,
  ) async {
    final Uri _uri = Uri.parse(SettingPageParams.viewRepo);
    await launchUrl(_uri);
  }

  /// view author profile
  FutureOr<void> _onViewAuthor(
    ViewAuthorE event,
    Emitter<SettingsState> emit,
  ) async {
    final Uri _uri = Uri.parse(SettingPageParams.viewAuthor);
    await launchUrl(_uri);
  }
}
