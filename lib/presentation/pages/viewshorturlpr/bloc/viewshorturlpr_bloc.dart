// ignore_for_file: always_specify_types

import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/error/exception_msg.dart';
import 'package:url_shorten/domain/entities/error_entities.dart';
import 'package:url_shorten/domain/entities/rebrandly_entities.dart';
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:url_shorten/domain/entities/urlbae_entities.dart';
import 'package:url_shorten/domain/usecases/rebrandly_usecase.dart';
import 'package:url_shorten/domain/usecases/tinyurl_usecase.dart';
import 'package:url_shorten/domain/usecases/ulvis_usecase.dart';
import 'package:url_shorten/domain/usecases/urlbae_usecase.dart';
part 'viewshorturlpr_event.dart';
part 'viewshorturlpr_state.dart';

class ViewshorturlprBloc
    extends Bloc<ViewshorturlprEvent, ViewshorturlprState> {
  ViewshorturlprBloc() : super(const ViewshorturlprInitial()) {
    on<CustomViewshorturlprEvent>(_onCustomViewshorturlprEvent);
    on<GetPremiumShortUrlEvent>(_getPremiumShortURLEvent);
  }

  FutureOr<void> _onCustomViewshorturlprEvent(
    CustomViewshorturlprEvent event,
    Emitter<ViewshorturlprState> emit,
  ) async {}

  FutureOr<void> _getPremiumShortURLEvent(
    GetPremiumShortUrlEvent event,
    emit,
  ) async {
    // ignore: avoid_dynamic_calls
    emit(const ViewshorturlPremiumLoading());

    /// free short url api
    final List<Object> premiumShortUrls = <Object>[];

    /// check internet connection

    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();

    /// if no internet connection
    if (connectivityResult == ConnectivityResult.none) {
      // ignore: avoid_dynamic_calls
      emit(const ConnectionError());
      return;
    }

    /// ulvis api
    final UlvisUseCase ulvisUseCase = UlvisUseCase();
    final Result<UlvisEntity, Exception> ulvisresult =
        await ulvisUseCase.getShortPremiumUrl(event.url, event.custom);
    switch (ulvisresult) {
      case Success(data: final ulvisEntity):
        premiumShortUrls.add(ulvisEntity);
        break;
      case ServerFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'Ulvis'),
        );
        break;
      case RateLimitFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'Ulvis'),
        );
        break;
      case IpBlockFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'Ulvis'),
        );
        break;
      default:
        // Handle other cases if needed
        break;
    }

    /// urlbae api
    final UrlBaeUseCase urlBaeUseCase = UrlBaeUseCase();
    final Result<UrlBaeEntity, Exception> urlBaeResult =
        await urlBaeUseCase.getShortUrl(event.url, event.custom);
    switch (urlBaeResult) {
      case Success(data: final urlBaeEntity):
        premiumShortUrls.add(urlBaeEntity);
        break;
      case ServerFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'UrlBae'),
        );
        break;
      case RateLimitFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'UrlBae'),
        );
        break;
      case IpBlockFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'UrlBae'),
        );
        break;
      default:
        // Handle other cases if needed
        break;
    }

    /// tiny url api
    final TinyUrlUsecase tinyUrlUsecase = TinyUrlUsecase();
    final Result<TinyUrlEntities, Exception> tinyUrlResult =
        await tinyUrlUsecase.getShortUrl(event.url, event.custom);
    switch (tinyUrlResult) {
      case Success(data: final tinyUrlEntity):
        premiumShortUrls.add(tinyUrlEntity);
        break;
      case ServerFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'TinyUrl'),
        );
        break;
      case RateLimitFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'TinyUrl'),
        );
        break;
      case IpBlockFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(message: getExceptionMsg(exception), domain: 'TinyUrl'),
        );
        break;
      default:
        // Handle other cases if needed
        break;
    }

    /// rebrandly api
    final RebrandlyUseCase rebrandlyUseCase = RebrandlyUseCase();
    final Result<RebrandlyEntities, Exception> rebrandlyResult =
        await rebrandlyUseCase.getShortUrl(event.url, event.custom);
    switch (rebrandlyResult) {
      case Success(data: final rebrandlyEntity):
        premiumShortUrls.add(rebrandlyEntity);
        break;
      case ServerFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(
            message: getExceptionMsg(exception),
            domain: 'Rebrandly',
          ),
        );
        break;
      case RateLimitFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(
            message: getExceptionMsg(exception),
            domain: 'Rebrandly',
          ),
        );
        break;
      case IpBlockFailor(error: final exception):
        premiumShortUrls.add(
          ErrorModel(
            message: getExceptionMsg(exception),
            domain: 'Rebrandly',
          ),
        );
        break;
      default:
        // Handle other cases if needed
        break;
    }

    /// emit the sucess state
    // ignore: avoid_dynamic_calls
    emit(ViewshorturlPremiumSuccess(premiumShortUrls));
  }
}
