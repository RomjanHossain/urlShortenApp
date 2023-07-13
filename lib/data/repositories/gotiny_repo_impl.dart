import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/domain/entities/gotiny_entities.dart';
import 'package:http/http.dart' as http;
import 'package:url_shorten/domain/repositories/gotiny_repo.dart';

class GotinyRepoImpl extends GotinyRepository {
  @override
  Future<Result<GotinyEntity, Exception>> shortUrl(String url) async {
    const String gotiny = FreeApiResources.goTiny;
    try {
      final Uri uri = Uri.parse(gotiny);

      // final http.Response response = await http.post(uri, body: {'url': url});
      /// a post method where the url is passed as a body and header will be content-type application/json
      final http.Response response = await http.post(uri,
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(<String, String>{'input': url}));

      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final gotinyEntity = GotinyEntity.fromJson(result[0]);
        return Success(gotinyEntity);
      } else {
        // print('oh no! 400 -> ${response.statusCode}\n${response.body}');
        return ServerFailor(Exception('Unable to get short url'));
      }
    } on Exception catch (e) {
      return ServerFailor(e);
    }
  }
}
