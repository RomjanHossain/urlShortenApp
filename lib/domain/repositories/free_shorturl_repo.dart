// ignore_for_file: one_member_abstracts

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';

/// ShortUrlRepository
abstract class ShortUrlRepository {
  Future<Result<ShrtcoEntity, Exception>> freeShortUrl(String url);
}
