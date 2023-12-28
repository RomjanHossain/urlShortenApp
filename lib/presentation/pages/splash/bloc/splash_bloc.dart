import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_shorten/presentation/animations/page_transitions.dart';
import 'package:url_shorten/presentation/pages/home/view/home_page.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashInitial()) {
    on<InitSplashEvent>(_onCustomSplashEvent);
  }

  FutureOr<void> _onCustomSplashEvent(
    InitSplashEvent event,
    Emitter<SplashState> emit,
  ) async {
    // wait for 3 seconds
    await Future<dynamic>.delayed(const Duration(seconds: 3));
    if (event.context.mounted) {
      // ignore: use_build_context_synchronously
      await Navigator.pushAndRemoveUntil(
        event.context,
        PageAnimationWrapper.fadeThroughTransitionPageWrapper(const HomePage()),
        (_) => false,
      );
    }
  }
}
