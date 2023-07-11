import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'favorite_event.dart';
part 'favorite_state.dart';

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(const FavoriteInitial()) {
    on<CustomFavoriteEvent>(_onCustomFavoriteEvent);
  }

  FutureOr<void> _onCustomFavoriteEvent(
    CustomFavoriteEvent event,
    Emitter<FavoriteState> emit,
  ) {
    // TODO: Add Logic
  }
}
