// ignore_for_file: always_specify_types

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/presentation/animations/page_transitions.dart';
import 'package:url_shorten/presentation/pages/viewshorturl/view/viewshorturl_page.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<ChangePageEvent>(_onCustomHomeEvent);
    on<GotoViewShortUrlPageEvent>(_onGotoViewShortUrlPageEvent);
  }

  FutureOr<void> _onCustomHomeEvent(
    ChangePageEvent event,
    Emitter<HomeState> emit,
  ) {
    switch (event.index) {
      case 0:
        emit(HomeInitial());
        break;
      case 1:
        emit(const FavoritePageState());
        break;
      case 2:
        emit(const HistoryPageState());
        break;
      case 3:
        emit(const SettingPageState());
        break;
      default:
        emit(HomeInitial());
    }
  }

  FutureOr<void> _onGotoViewShortUrlPageEvent(event, emmit) async {
    await Navigator.push(
      // ignore: avoid_dynamic_calls
      event.context as BuildContext,
      PageAnimationWrapper.sharedAxisTransitionPageWrapper(
        const ViewshorturlPage(),
      ),
    );
  }
}
