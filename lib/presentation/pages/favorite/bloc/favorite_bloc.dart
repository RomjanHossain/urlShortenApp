import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/data/models/shrtco_fav_db_model.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();

  FavoriteBloc()
      : super(const FavoriteInitial(shortUrlsFree: [], shrtCoUrlFree: [])) {
    on<CustomFavoriteEvent>(_onCustomFavoriteEvent);
    on<AddToFavE>(_onAddFavE);
    on<RemoveFromFavE>(_onRemoveFavE);
    on<AddToShrtFavE>(_onAddShrtFavE);
    on<RemoveShrtFromFavE>(_onRemoveShrtFavE);
  }

  FutureOr<void> _onCustomFavoriteEvent(
    CustomFavoriteEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    List<ShortUrlFavContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrlFAV();
    List<ShrtcoFavDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrlFAV();
    emit(FavoriteInitial(shortUrlsFree: freeUrls, shrtCoUrlFree: shrtCoUrls));
  }

  FutureOr<void> _onAddFavE(event, emit) async {
    await shortDBImplementation.insertShortUrlFAV(
      event.shortUrlFavContainerDBModel,
    );
    List<ShortUrlFavContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrlFAV();
    List<ShrtcoFavDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrlFAV();
    emit(FavoriteInitial(shortUrlsFree: freeUrls, shrtCoUrlFree: shrtCoUrls));
  }

  FutureOr<void> _onRemoveFavE(event, emit) async {
    await shortDBImplementation.removeShortUrlFAV(
      event.id,
    );
    List<ShortUrlFavContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrlFAV();
    List<ShrtcoFavDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrlFAV();
    emit(FavoriteInitial(shortUrlsFree: freeUrls, shrtCoUrlFree: shrtCoUrls));
  }

  ///? shrtCO
  FutureOr<void> _onAddShrtFavE(event, emit) async {
    await shortDBImplementation.insertShrCotUrlFAV(
      event.shortUrlFavContainerDBModel,
    );
    List<ShortUrlFavContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrlFAV();
    List<ShrtcoFavDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrlFAV();
    emit(FavoriteInitial(shortUrlsFree: freeUrls, shrtCoUrlFree: shrtCoUrls));
  }

  FutureOr<void> _onRemoveShrtFavE(event, emit) async {
    await shortDBImplementation.removeShrtCoUrlFAV(
      event.id,
    );
    List<ShortUrlFavContainerDBModel> freeUrls =
        await shortDBImplementation.getAllShortUrlFAV();
    List<ShrtcoFavDBModel> shrtCoUrls =
        await shortDBImplementation.getAllShrtCoUrlFAV();
    emit(FavoriteInitial(shortUrlsFree: freeUrls, shrtCoUrlFree: shrtCoUrls));
  }
}
