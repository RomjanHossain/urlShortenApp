import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/data/datasources/local/shorturl_db_impl.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/domain/entities/gotiny_entities.dart';
import 'package:url_shorten/domain/repositories/gotiny_repo.dart';

class GotinyRepoImpl extends GotinyRepository {
  ShortDBImplementation shortDBImplementation = ShortDBImplementation();

  @override
  Future<Result<GotinyEntity, Exception>> shortUrl(String url) async {
    const String gotiny = FreeApiResources.goTiny;
    try {
      final Uri uri = Uri.parse(gotiny);

      // final http.Response response = await http.post(uri, body: {'url': url});
      /// a post method where the url is passed as a body and header will be content-type application/json
      final http.Response response = await http.post(
        uri,
        headers: <String, String>{'Content-Type': 'application/json'},
        body: jsonEncode(<String, String>{'input': url}),
      );

      // check if the response is successful
      if (response.statusCode == 200) {
        // ignore: always_specify_types
        final result = json.decode(response.body);
        final GotinyEntity gotinyEntity =
            // ignore: avoid_dynamic_calls
            GotinyEntity.fromJson(result[0] as Map<String, dynamic>);

        ///! Saving the db to local storage
        final ShortUrlContainerDBModel shortUrlContainerDBModel =
            ShortUrlContainerDBModel()
              ..domain = 'GoTiny'
              ..originalLink = url
              ..shortLink = 'gotiny.cc/${gotinyEntity.code}';
        await shortDBImplementation.insertShortUrl(shortUrlContainerDBModel);

        ///! End
        return Success<GotinyEntity, Exception>(gotinyEntity);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor<GotinyEntity, Exception>(
          Exception('Unable to get short url'),
        );
      }
    } on Exception catch (e) {
      return ServerFailor<GotinyEntity, Exception>(e);
    }
  }
}
