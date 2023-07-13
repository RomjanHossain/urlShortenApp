part of 'viewshorturlpr_bloc.dart';

/// {@template viewshorturlpr_state}
/// ViewshorturlprState description
/// {@endtemplate}
class ViewshorturlprState extends Equatable {
  /// {@macro viewshorturlpr_state}
  const ViewshorturlprState();

  @override
  List<Object> get props => [];
}

/// {@template viewshorturlpr_initial}
/// The initial state of ViewshorturlprState
/// {@endtemplate}
class ViewshorturlprInitial extends ViewshorturlprState {
  /// {@macro viewshorturlpr_initial}
  const ViewshorturlprInitial() : super();
}

/// loading state (premium)
class ViewshorturlPremiumLoading extends ViewshorturlprState {
  /// {@macro viewshorturl_loading}
  const ViewshorturlPremiumLoading() : super();
}

/// error state (premium)
class ViewshorturlPremiumError extends ViewshorturlprState {
  /// {@macro viewshorturl_error}
  const ViewshorturlPremiumError(this.message) : super();

  /// error message
  final String message;
  @override
  List<Object> get props => [message];
}

/// No Internet
class ConnectionError extends ViewshorturlprState {
  /// {@macro viewshorturl_loading}
  const ConnectionError() : super();
}

/// sucess state (premium)
class ViewshorturlPremiumSuccess extends ViewshorturlprState {
  /// {@macro viewshorturl_error}
  const ViewshorturlPremiumSuccess(this.surls) : super();

  /// error short urls
  final List<Object> surls;
  @override
  List<Object> get props => [surls];
}
