import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/pr_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/domain/entities/rebrandly_entities.dart';
import 'package:url_shorten/domain/repositories/rebrandly_repo.dart';

import '../../core/params/api_keys.dart';

class RebrandlyRepoImp extends RebrandlyRepository {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();

  @override
  Future<Result<RebrandlyEntities, Exception>> shortUrl(
      String url, String custom) async {
    const String rebrandLy = PremiumApiResources.rebrandly;
    try {
      // final Uri uri = Uri.parse(
      //     'https://api.rebrandly.com/v1/links/new?destination=https://www.youtube.com/watch?v=jjwBhI_5sYo');
      final Uri uri = Uri.parse('$rebrandLy?destination=$url&slashtag=$custom');
      // final http.Response response = await http.post(uri, body: {'url': url});
      /// a post method where the url is passed as a body and header will be content-type application/json
      final http.Response response = await http.get(
        uri,
        headers: {
          'apiKey': ApiKeys.rebrandlyToken,
          'Content-Type': 'application/json'
        },
      );

      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final rebrandlyEntity = RebrandlyEntities.fromJson(result);

        ///! Saving the db to local storage
        final shortUrlContainerDBModel = ShortUrlContainerDBModel()
          ..domain = 'Rebrandly'
          ..originalLink = url
          ..isAlias = true
          ..shortLink = rebrandlyEntity.shortUrl;
        shortDBImplementation.insertShortUrl(shortUrlContainerDBModel);

        ///! End
        return Success(rebrandlyEntity);
      } else {
        print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor(Exception('Unable to get short url'));
      }
    } on Exception catch (e) {
      return ServerFailor(e);
    }
  }
}
