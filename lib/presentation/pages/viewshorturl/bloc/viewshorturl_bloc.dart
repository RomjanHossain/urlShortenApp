import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'viewshorturl_event.dart';
part 'viewshorturl_state.dart';

class ViewshorturlBloc extends Bloc<ViewshorturlEvent, ViewshorturlState> {
  ViewshorturlBloc() : super(const ViewshorturlInitial('')) {
    on<AddViewshorturlEvent>(_onCustomViewshorturlEvent);
  }

  FutureOr<void> _onCustomViewshorturlEvent(
    AddViewshorturlEvent event,
    Emitter<ViewshorturlState> emit,
  ) async {
    emit(ViewshorturlInitial(event.url));
  }
}
