import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/cleanuri_entities.dart';

/// ShortUrlRepository
abstract class CleanUriRepository {
  Future<Result<CleanUriEntities, Exception>> shortUrl(String url);
}
