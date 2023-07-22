// ignore_for_file: one_member_abstracts

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/domain/entities/rebrandly_entities.dart';

/// rebradly repo
abstract class RebrandlyRepository {
  Future<Result<RebrandlyEntities, Exception>> shortUrl(
    String url,
    String custom,
  );
}
