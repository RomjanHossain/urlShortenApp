import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/domain/entities/cleanuri_entities.dart';
import 'package:url_shorten/domain/repositories/cleanuri_repo.dart';
import 'package:http/http.dart' as http;

class CleanUriRepoImpl extends CleanUriRepository {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();
  @override
  Future<Result<CleanUriEntities, Exception>> shortUrl(String url) async {
    const String cleanUri = FreeApiResources.cleanUri;
    try {
      final Uri uri = Uri.parse(cleanUri);

      /// a post method where the url is passed as a body
      final http.Response response = await http.post(uri, body: {'url': url});

      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final cleanUriEntities = CleanUriEntities.fromJson(result);

        ///! Saving the db to local storage
        final shortUrlContainerDBModel = ShortUrlContainerDBModel()
          ..domain = 'CleanUri'
          ..originalLink = url
          ..shortLink = cleanUriEntities.resultUrl;
        shortDBImplementation.insertShortUrl(shortUrlContainerDBModel);

        ///! End
        return Success(cleanUriEntities);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor(Exception('Unable to get short url'));
      }
    } on Exception catch (e) {
      return ServerFailor(e);
    }
  }
}
