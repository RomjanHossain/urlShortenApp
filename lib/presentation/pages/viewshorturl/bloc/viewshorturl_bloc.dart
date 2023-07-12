import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/error/api_erros_msg.dart';
import 'package:url_shorten/domain/entities/error_entities.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/domain/usecases/cleanuri_usecase.dart';
import 'package:url_shorten/domain/usecases/gotiny_usecase.dart';
import 'package:url_shorten/domain/usecases/shrtco_usecase.dart';
part 'viewshorturl_event.dart';
part 'viewshorturl_state.dart';

class ViewshorturlBloc extends Bloc<ViewshorturlEvent, ViewshorturlState> {
  ViewshorturlBloc() : super(const ViewshorturlInitial('')) {
    on<AddViewshorturlEvent>(_onCustomViewshorturlEvent);
    on<GetShortUrlEvent>(_onFreeApiCall);
  }

  /// {@macro custom_viewshorturl_event}
  FutureOr<void> _onCustomViewshorturlEvent(
    AddViewshorturlEvent event,
    Emitter<ViewshorturlState> emit,
  ) async {
    emit(ViewshorturlInitial(event.url));
  }

  /// calling the free apis
  FutureOr<void> _onFreeApiCall(event, emit) async {
    emit(const ViewshorturlLoading());

    /// free short url api
    List<Object> freeShortUrls = [];

    /// check internet connection

    final connectivityResult = await (Connectivity().checkConnectivity());

    /// if no internet connection
    if (connectivityResult == ConnectivityResult.none) {
      emit(const ConnectionError());
      return;
    }

    ///! shrtco api
    ShrtCOUrlUseCase shrtCOUrlUseCase = ShrtCOUrlUseCase();
    final shrtcoResult = await shrtCOUrlUseCase.getShortUrl(event.url);
    final shrtcoValue = switch (shrtcoResult) {
      Success(data: final shrtcoEntity) => freeShortUrls.add(shrtcoEntity),
      ServerFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'ShrtCo')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
      RateLimitFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'ShrtCo')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
      IpBlockFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'ShrtCo')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
    };

    /// cleanuri api
    CleanUriUseCase cleanUriUseCase = CleanUriUseCase();
    final cleanUriresult = await cleanUriUseCase.getShortUrl(event.url);
    final cleanUriValue = switch (cleanUriresult) {
      Success(data: final shrtcoEntity) => freeShortUrls.add(shrtcoEntity),
      ServerFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'CleanUri')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
      RateLimitFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'CleanUri')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
      IpBlockFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'CleanUri')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
    };

    /// gotiny api
    GotinyUseCase gotinyUseCase = GotinyUseCase();
    final gotinyresult = await gotinyUseCase.getShortUrl(event.url);
    final gotinyValue = switch (gotinyresult) {
      Success(data: final shrtcoEntity) => freeShortUrls.add(shrtcoEntity),
      ServerFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'Gotiny')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
      RateLimitFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'Gotiny')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
      IpBlockFailor(error: final exception) => freeShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'Gotiny')),
      // emit(ViewshorturlError(getExceptionMsg(exception))),
    };

    /// emit the sucess state
    emit(ViewshorturlSuccess(freeShortUrls));
  }

  /// get error message
  String getExceptionMsg(Exception exception) {
    if (exception is ServerFailor) {
      return serverFailorMsg;
    } else if (exception is RateLimitFailor) {
      return rateLimitMsg;
    } else if (exception is IpBlockFailor) {
      return ipBlockMsg;
    } else {
      return unknownErrorMsg;
    }
  }
}
