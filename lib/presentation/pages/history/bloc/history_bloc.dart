import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/params/history_page_params.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
part 'history_event.dart';
part 'history_state.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();

  HistoryBloc()
      : super(HistoryInitial(
            segmentButtonEnum: HistorySegmentButtonEnum.shorturl,
            shortUrlsFree: const [],
            shrtCoUrlFree: const [])) {
    on<ChangeSegmentBtnE>(_onCustomHistoryEvent);
    on<DeleteShortUrlE>(_onDeleteShortUrl);
    on<DeleteShrtCoUrlE>(_onDeleteShrtCoUrl);
  }

  FutureOr<void> _onCustomHistoryEvent(
    ChangeSegmentBtnE event,
    Emitter<HistoryState> emit,
  ) async {
    List<ShortUrlContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrl();
    List<ShrtcoDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrl();

    emit(HistoryInitial(
      segmentButtonEnum: event.segmentButtonEnum,
      shortUrlsFree: freeUrls,
      shrtCoUrlFree: shrtCoUrls,
    ));
  }

  FutureOr<void> _onDeleteShortUrl(
    DeleteShortUrlE event,
    Emitter<HistoryState> emit,
  ) async {
    await shortDBImplementation
        .removeShortUrl(event.shortUrlContainerDBModel.id);
    List<ShortUrlContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrl();
    List<ShrtcoDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrl();

    emit(HistoryInitial(
      segmentButtonEnum: event.isAlias
          ? HistorySegmentButtonEnum.aliasurl
          : HistorySegmentButtonEnum.shorturl,
      shortUrlsFree: freeUrls,
      shrtCoUrlFree: shrtCoUrls,
    ));
  }

  FutureOr<void> _onDeleteShrtCoUrl(
    DeleteShrtCoUrlE event,
    Emitter<HistoryState> emit,
  ) async {
    await shortDBImplementation.removeShrtCoUrl(event.shrtcoDBModel.id);
    List<ShortUrlContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrl();
    List<ShrtcoDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrl();

    emit(HistoryInitial(
      segmentButtonEnum: HistorySegmentButtonEnum.shorturl,
      shortUrlsFree: freeUrls,
      shrtCoUrlFree: shrtCoUrls,
    ));
  }
}
