import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';

/// ShortUrlRepository
abstract class UlvisRepository {
  Future<Result<UlvisEntity, Exception>> shortUrl(String url);
  Future<Result<UlvisEntity, Exception>> prShortUrl(String url, String custom);
}
