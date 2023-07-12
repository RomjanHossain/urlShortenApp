import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(const HistoryInitial()) {
    on<CustomHistoryEvent>(_onCustomHistoryEvent);
  }

  FutureOr<void> _onCustomHistoryEvent(
    CustomHistoryEvent event,
    Emitter<HistoryState> emit,
  ) {
    // TODO: Add Logic
  }
}
