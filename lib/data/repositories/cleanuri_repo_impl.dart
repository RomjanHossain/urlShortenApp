import 'dart:convert';
import 'dart:isolate';

import 'package:http/http.dart' as http;
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/domain/entities/cleanuri_entities.dart';
import 'package:url_shorten/domain/repositories/cleanuri_repo.dart';

class CleanUriRepoImpl extends CleanUriRepository {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();
  @override
  Future<Result<CleanUriEntities, Exception>> shortUrl(String url) async {
    const String cleanUri = FreeApiResources.cleanUri;
    try {
      final Uri uri = Uri.parse(cleanUri);

      /// a post method where the url is passed as a body
      final http.Response response =
          await http.post(uri, body: <String, String>{'url': url});

      // check if the response is successful
      if (response.statusCode == 200) {
        final Future<Success<CleanUriEntities, Exception>> Function() multiT =
            await Isolate.run(() => () async {
                  final Map<String, dynamic> result =
                      json.decode(response.body) as Map<String, dynamic>;
                  final CleanUriEntities cleanUriEntities =
                      CleanUriEntities.fromJson(result);

                  ///! Saving the db to local storage
                  final ShortUrlContainerDBModel shortUrlContainerDBModel =
                      ShortUrlContainerDBModel()
                        ..domain = 'CleanUri'
                        ..originalLink = url
                        ..shortLink = cleanUriEntities.resultUrl;
                  await shortDBImplementation
                      .insertShortUrl(shortUrlContainerDBModel);

                  ///! End
                  return Success<CleanUriEntities, Exception>(cleanUriEntities);
                });
        final Map<String, dynamic> result =
            json.decode(response.body) as Map<String, dynamic>;
        final CleanUriEntities cleanUriEntities =
            CleanUriEntities.fromJson(result);

        ///! Saving the db to local storage
        final ShortUrlContainerDBModel shortUrlContainerDBModel =
            ShortUrlContainerDBModel()
              ..domain = 'CleanUri'
              ..originalLink = url
              ..shortLink = cleanUriEntities.resultUrl;
        await shortDBImplementation.insertShortUrl(shortUrlContainerDBModel);

        ///! End
        return Success<CleanUriEntities, Exception>(cleanUriEntities);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor<CleanUriEntities, Exception>(
          Exception('Unable to get short url'),
        );
      }
    } on Exception catch (e) {
      return ServerFailor<CleanUriEntities, Exception>(e);
    }
  }
}
