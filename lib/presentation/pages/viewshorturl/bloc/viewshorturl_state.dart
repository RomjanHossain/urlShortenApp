part of 'viewshorturl_bloc.dart';

/// {@template viewshorturl_state}
/// ViewshorturlState description
/// {@endtemplate}
class ViewshorturlState extends Equatable {
  /// {@macro viewshorturl_state}
  const ViewshorturlState();

  @override
  List<Object> get props => [];
}

/// {@template viewshorturl_initial}
/// The initial state of ViewshorturlState
/// {@endtemplate}
class ViewshorturlInitial extends ViewshorturlState {
  /// {@macro viewshorturl_initial}
  const ViewshorturlInitial(this.url) : super();

  /// main url
  final String url;
}
