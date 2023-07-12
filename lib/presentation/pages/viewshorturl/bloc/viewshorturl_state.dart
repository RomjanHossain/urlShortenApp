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

/// loading state (free)
class ViewshorturlLoading extends ViewshorturlState {
  /// {@macro viewshorturl_loading}
  const ViewshorturlLoading() : super();
}

/// loading state (premium)
class ViewshorturlPremiumLoading extends ViewshorturlState {
  /// {@macro viewshorturl_loading}
  const ViewshorturlPremiumLoading() : super();
}

/// error state (free)
class ViewshorturlError extends ViewshorturlState {
  /// {@macro viewshorturl_error}
  const ViewshorturlError(this.message) : super();

  /// error message
  final String message;
  @override
  List<Object> get props => [message];
}

/// error state (premium)
class ViewshorturlPremiumError extends ViewshorturlState {
  /// {@macro viewshorturl_error}
  const ViewshorturlPremiumError(this.message) : super();

  /// error message
  final String message;
  @override
  List<Object> get props => [message];
}

/// No Internet
class ConnectionError extends ViewshorturlState {
  /// {@macro viewshorturl_loading}
  const ConnectionError() : super();
}

/// success state (free)
class ViewshorturlSuccess extends ViewshorturlState {
  /// {@macro viewshorturl_error}
  const ViewshorturlSuccess(this.surls) : super();

  /// error short urls
  final List<Object> surls;
  @override
  List<Object> get props => [surls];
}

/// sucess state (premium)
class ViewshorturlPremiumSuccess extends ViewshorturlState {
  /// {@macro viewshorturl_error}
  const ViewshorturlPremiumSuccess(this.surls) : super();

  /// error short urls
  final List<Object> surls;
  @override
  List<Object> get props => [surls];
}
