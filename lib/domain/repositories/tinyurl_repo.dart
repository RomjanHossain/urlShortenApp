import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';

/// ShortUrlRepository
abstract class TinyURLRepository {
  Future<Result<TinyUrlEntities, Exception>> shortUrl(
      String url, String custom);
}
