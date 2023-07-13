part of 'viewshorturlpr_bloc.dart';

abstract class ViewshorturlprEvent extends Equatable {
  const ViewshorturlprEvent();

  @override
  List<Object> get props => [];
}

/// {@template custom_viewshorturlpr_event}
/// Event added when some custom logic happens
/// {@endtemplate}
class CustomViewshorturlprEvent extends ViewshorturlprEvent {
  /// {@macro custom_viewshorturlpr_event}
  const CustomViewshorturlprEvent();
}

/// call premium api to get short url
class GetPremiumShortUrlEvent extends ViewshorturlprEvent {
  /// {@macro custom_viewshorturl_event}
  const GetPremiumShortUrlEvent({
    required this.url,
    required this.custom,
  });

  // get url from user
  final String url;

  /// custom
  final String custom;
}
