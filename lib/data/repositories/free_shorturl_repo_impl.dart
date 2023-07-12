import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/domain/repositories/free_shorturl_repo.dart';
import 'package:http/http.dart' as http;

class ShortUrlRepoImpl extends ShortUrlRepository {
  @override
  Future<Result<ShrtcoEntity, Exception>> freeShortUrl(String url) async {
    const String shrtCoUrl = FreeApiResources.shrtCo;
    try {
      final Uri uri = Uri.parse('$shrtCoUrl?url=$url');
      final http.Response response = await http.get(uri);
      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final shrtcoEntities = ShrtcoEntity.fromJson(result['result']);
        return Success(shrtcoEntities);
      } else {
        return ServerFailor(Exception('Unable to get short url'));
      }
    } on Exception catch (e) {
      return ServerFailor(e);
    }
  }
}
