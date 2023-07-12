import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/gotiny_entities.dart';

/// ShortUrlRepository
abstract class GotinyRepository {
  Future<Result<GotinyEntity, Exception>> shortUrl(String url);
}
