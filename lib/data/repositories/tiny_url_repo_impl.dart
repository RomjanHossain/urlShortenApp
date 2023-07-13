import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/params/api_keys.dart';
import 'package:url_shorten/core/resources/pr_resources.dart';
import 'package:http/http.dart' as http;
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';
import 'package:url_shorten/domain/repositories/tinyurl_repo.dart';

class TinyUrlRepoImpl extends TinyURLRepository {
  @override
  Future<Result<TinyUrlEntities, Exception>> shortUrl(
      String url, String custom) async {
    const String tinyUrl = PremiumApiResources.tinyUrl;
    try {
      final Uri uri = Uri.parse('$tinyUrl?api_token=${ApiKeys.tinyUrlToken}');

      // final http.Response response = await http.post(uri, body: {'url': url});
      /// a post method where the url is passed as a body and header will be content-type application/json
      final http.Response response = await http.post(uri,
          body: jsonEncode(<String, String>{
            'url': url,
            'alias': custom,
          }));

      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final urlBaeEntity = TinyUrlEntities.fromJson(result);
        return Success(urlBaeEntity);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor(Exception('Unable to get short url'));
      }
    } on Exception catch (e) {
      return ServerFailor(e);
    }
  }
}
