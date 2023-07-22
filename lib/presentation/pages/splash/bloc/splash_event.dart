part of 'splash_bloc.dart';

abstract class SplashEvent extends Equatable {
  const SplashEvent();

  @override
  List<Object> get props => <Object>[];
}

/// {@template custom_splash_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class InitSplashEvent extends SplashEvent {
  /// {@macro custom_splash_event}
  const InitSplashEvent(this.context);

  /// context
  final BuildContext context;
}
