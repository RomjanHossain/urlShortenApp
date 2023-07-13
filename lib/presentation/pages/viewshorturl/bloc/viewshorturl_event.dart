part of 'viewshorturl_bloc.dart';

abstract class ViewshorturlEvent extends Equatable {
  const ViewshorturlEvent();

  @override
  List<Object> get props => [];
}

/// Event added when some custom logic happens

class AddViewshorturlEvent extends ViewshorturlEvent {
  /// {@macro custom_viewshorturl_event}
  const AddViewshorturlEvent({required this.url});

  // get url from user
  final String url;
}

/// call free api to get short url
class GetShortUrlEvent extends ViewshorturlEvent {
  /// {@macro custom_viewshorturl_event}
  const GetShortUrlEvent({required this.url});

  // get url from user
  final String url;
}
