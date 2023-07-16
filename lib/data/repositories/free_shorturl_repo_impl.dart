import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';
import 'package:url_shorten/domain/repositories/free_shorturl_repo.dart';
import 'package:http/http.dart' as http;

import '../models/shrtco_db_model.dart';

class ShortUrlRepoImpl extends ShortUrlRepository {
  ShortDBImplementation shrtDbImpl = ShortDBImplementation();

  @override
  Future<Result<ShrtcoEntity, Exception>> freeShortUrl(String url) async {
    const String shrtCoUrl = FreeApiResources.shrtCo;
    try {
      final Uri uri = Uri.parse('$shrtCoUrl?url=$url');
      final http.Response response = await http.get(uri);
      // check if the response is successful
      if (response.statusCode == 201) {
        final result = json.decode(response.body);
        final shrtcoEntities = ShrtcoEntity.fromJson(result['result']);

        ///! Saving the db to local storage
        final shrtDBmod = ShrtcoDBModel()
          ..originalLink = url
          ..shrtLink1 = shrtcoEntities.shortLink
          ..shrtLink2 = shrtcoEntities.shortLink2
          ..shrtLink3 = shrtcoEntities.shortLink3;
        shrtDbImpl.insertShrCotUrl(shrtDBmod);

        ///! End
        return Success(shrtcoEntities);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor(Exception('Unable to get short url'));
      }
    } on Exception catch (e) {
      return ServerFailor(e);
    }
  }
}
