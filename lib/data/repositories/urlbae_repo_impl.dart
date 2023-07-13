import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/params/api_keys.dart';
import 'package:url_shorten/core/resources/pr_resources.dart';
import 'package:http/http.dart' as http;
import 'package:url_shorten/domain/entities/urlbae_entities.dart';
import 'package:url_shorten/domain/repositories/urlbae_repo.dart';

class UrlBaeRepoImpl extends UrlBaeRepository {
  @override
  Future<Result<UrlBaeEntity, Exception>> shortUrl(
      String url, String custom) async {
    const String urlBay = PremiumApiResources.urlBay;
    try {
      final Uri uri = Uri.parse(urlBay);

      // final http.Response response = await http.post(uri, body: {'url': url});
      /// a post method where the url is passed as a body and header will be content-type application/json
      final http.Response response = await http.post(uri,
          headers: {
            'Authorization': 'Bearer ${ApiKeys.urlBayToken}',
          },
          body: jsonEncode(<String, String>{
            'url': url,
            'custom': custom,
          }));

      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final urlBaeEntity = UrlBaeEntity.fromJson(result[0]);
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
