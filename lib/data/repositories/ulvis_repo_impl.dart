import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:url_shorten/domain/repositories/ulvis_repo.dart';

class UlvisRepoImpl extends UlvisRepository {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();

  @override
  Future<Result<UlvisEntity, Exception>> shortUrl(String url) async {
    const String ulvisUrl = FreeApiResources.ulVis;
    try {
      final Uri uri = Uri.parse('$ulvisUrl?url=$url');
      final http.Response response = await http.get(uri);
      // check if the response is successful
      if (response.statusCode == 200) {
        final Map<String, dynamic> result =
            json.decode(response.body) as Map<String, dynamic>;
        final UlvisEntity ulvisEntity = UlvisEntity.fromJson(result);

        ///! Saving the db to local storage
        final ShortUrlContainerDBModel shortUrlContainerDBModel =
            ShortUrlContainerDBModel()
              ..domain = 'Ulvis'
              ..originalLink = url
              ..shortLink = ulvisEntity.data.url;
        await shortDBImplementation.insertShortUrl(shortUrlContainerDBModel);

        ///! End
        return Success<UlvisEntity, Exception>(ulvisEntity);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor<UlvisEntity, Exception>(
          Exception('Unable to get short url'),
        );
      }
    } on Exception catch (e) {
      return ServerFailor<UlvisEntity, Exception>(e);
    }
  }

  @override
  Future<Result<UlvisEntity, Exception>> prShortUrl(
    String url,
    String custom,
  ) async {
    const String ulvisUrl = FreeApiResources.ulVis;
    try {
      final Uri uri = Uri.parse('$ulvisUrl?url=$url&custom=$custom');
      final http.Response response = await http.get(uri);
      // check if the response is successful
      if (response.statusCode == 200) {
        final Map<String, dynamic> result =
            json.decode(response.body) as Map<String, dynamic>;
        final UlvisEntity shrtcoEntities = UlvisEntity.fromJson(result);
        return Success<UlvisEntity, Exception>(shrtcoEntities);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor<UlvisEntity, Exception>(
          Exception('Unable to get short url'),
        );
      }
    } on Exception catch (e) {
      return ServerFailor<UlvisEntity, Exception>(e);
    }
  }
}
