import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/error/api_erros_msg.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
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
    /// check internet connection

    final connectivityResult = await (Connectivity().checkConnectivity());

    /// if no internet connection
    if (connectivityResult == ConnectivityResult.none) {
      emit(const ConnectionError());
      return;
    }
    ShrtCOUrlUseCase shrtCOUrlUseCase = ShrtCOUrlUseCase();
    emit(const ViewshorturlLoading());
    final result = await shrtCOUrlUseCase.getShortUrl(event.url);
    final value = switch (result) {
      Success(data: final shrtcoEntity) =>
        emit(ViewshorturlSuccess([shrtcoEntity])),
      ServerFailor(error: final exception) =>
        emit(ViewshorturlError(getExceptionMsg(exception))),
      RateLimitFailor(error: final exception) =>
        emit(ViewshorturlError(getExceptionMsg(exception))),
      IpBlockFailor(error: final exception) =>
        emit(ViewshorturlError(getExceptionMsg(exception))),
    };
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
