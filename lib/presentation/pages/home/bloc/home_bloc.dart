import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeInitial()) {
    on<ChangePageEvent>(_onCustomHomeEvent);
  }

  FutureOr<void> _onCustomHomeEvent(
    ChangePageEvent event,
    Emitter<HomeState> emit,
  ) {
    switch (event.index) {
      case 0:
        emit(const HomeInitial());
        break;
      case 1:
        emit(const SettingPageState());
        break;
      case 2:
        emit(const HistoryPageState());
        break;
      default:
        emit(const HomeInitial());
    }
  }
}
