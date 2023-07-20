import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
part 'settings_event.dart';
part 'settings_state.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  final ShortDBImplementation _shortDBImplementation = ShortDBImplementation();
  SettingsBloc() : super(const SettingsInitial()) {
    on<CustomSettingsEvent>(_onCustomSettingsEvent);
    on<DeleteAllHistoryE>(_onDeleteAllHistory);
    on<DeleteAllFavE>(_onDeleteAllFav);
  }

  FutureOr<void> _onCustomSettingsEvent(
    CustomSettingsEvent event,
    Emitter<SettingsState> emit,
  ) {
    // TODO: Add Logic
  }

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
}
