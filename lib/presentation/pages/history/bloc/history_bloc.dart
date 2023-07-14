import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc()
      : super(HistoryInitial(
            segmentButtonEnum: HistorySegmentButtonEnum.shorturl)) {
    on<ChangeSegmentBtnE>(_onCustomHistoryEvent);
  }

  FutureOr<void> _onCustomHistoryEvent(
    ChangeSegmentBtnE event,
    Emitter<HistoryState> emit,
  ) {
    emit(HistoryInitial(segmentButtonEnum: event.segmentButtonEnum));
  }
}
