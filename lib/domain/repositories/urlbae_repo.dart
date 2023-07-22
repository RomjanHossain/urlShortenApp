// ignore_for_file: one_member_abstracts

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/urlbae_entities.dart';

/// ShortUrlRepository
abstract class UrlBaeRepository {
  Future<Result<UrlBaeEntity, Exception>> shortUrl(String url, String custom);
}
