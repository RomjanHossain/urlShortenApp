import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/error/api_erros_msg.dart';

/// get error message
String getExceptionMsg(Exception exception) {
  if (exception is ServerFailor) {
    return serverFailorMsg;
  } else if (exception is RateLimitFailor) {
    return rateLimitMsg;
  } else if (exception is IpBlockFailor) {
    return ipBlockMsg;
  } else {
    return unknownErrorMsg;
  }
}
