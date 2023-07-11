part of 'viewshorturl_bloc.dart';

/// ViewshorturlState description

class ViewshorturlState extends Equatable {
  /// {@macro viewshorturl_state}
  const ViewshorturlState();

  @override
  List<Object> get props => [];
}

/// The initial state of ViewshorturlState

class ViewshorturlInitial extends ViewshorturlState {
  /// {@macro viewshorturl_initial}
  const ViewshorturlInitial(this.url) : super();

  /// main url
  final String url;
  @override
  List<Object> get props => [url];
}
