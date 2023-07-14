import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/datasources/local/shrtco_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();
  ShrtCoDBImplementation shrtCoDbImplementaion = ShrtCoDBImplementation();

  HistoryBloc()
      : super(HistoryInitial(
            segmentButtonEnum: HistorySegmentButtonEnum.shorturl,
            shortUrlsFree: [],
            shrtCoUrlFree: [])) {
    on<ChangeSegmentBtnE>(_onCustomHistoryEvent);
  }

  FutureOr<void> _onCustomHistoryEvent(
    ChangeSegmentBtnE event,
    Emitter<HistoryState> emit,
  ) async {
    List<ShortUrlContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrl();
    List<ShrtcoDBModel> shrtCoUrls =
        await shrtCoDbImplementaion.getAllShortUrl();

    emit(HistoryInitial(
      segmentButtonEnum: event.segmentButtonEnum,
      shortUrlsFree: freeUrls,
      shrtCoUrlFree: shrtCoUrls,
    ));
  }
}
