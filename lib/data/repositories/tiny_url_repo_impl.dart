import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/params/api_keys.dart';
import 'package:url_shorten/core/resources/pr_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';
import 'package:url_shorten/domain/repositories/tinyurl_repo.dart';

class TinyUrlRepoImpl extends TinyURLRepository {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();

  @override
  Future<Result<TinyUrlEntities, Exception>> shortUrl(
    String url,
    String custom,
  ) async {
    const String tinyUrl = PremiumApiResources.tinyUrl;
    try {
      final Uri uri = Uri.parse('$tinyUrl?api_token=${ApiKeys.tinyUrlToken}');
      final Map<String, String> requestBody = <String, String>{
        'url': url,
        'alias': custom,
      };
      final Map<String, String> headers = <String, String>{
        'Content-Type': 'application/json'
      };
      // final http.Response response = await http.post(uri, body: {'url': url});
      /// a post method where the url is passed as a body and header will be content-type application/json
      final http.Response response = await http.post(
        uri,
        headers: headers,
        body: jsonEncode(requestBody),
      );

      // check if the response is successful
      if (response.statusCode == 200) {
        final Map<String, dynamic> result =
            json.decode(response.body) as Map<String, dynamic>;
        final TinyUrlEntities tinyUrlEntity = TinyUrlEntities.fromJson(result);

        ///! Saving the db to local storage
        final ShortUrlContainerDBModel shortUrlContainerDBModel =
            ShortUrlContainerDBModel()
              ..domain = 'Tinyurl'
              ..originalLink = url
              ..isAlias = true
              ..shortLink = tinyUrlEntity.data?.tinyUrl ?? '';
        await shortDBImplementation.insertShortUrl(shortUrlContainerDBModel);

        ///! End
        return Success<TinyUrlEntities, Exception>(tinyUrlEntity);
      } else {
        return ServerFailor<TinyUrlEntities, Exception>(
          Exception('Unable to get short url'),
        );
      }
    } on Exception catch (e) {
      return ServerFailor<TinyUrlEntities, Exception>(e);
    }
  }
}
