import 'dart:convert';

import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/core/resources/free_resources.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';
import 'package:http/http.dart' as http;
import 'package:url_shorten/domain/repositories/ulvis_entities.dart';

class UlvisRepoImpl extends UlvisRepository {
  @override
  Future<Result<UlvisEntity, Exception>> shortUrl(String url) async {
    const String ulvisUrl = FreeApiResources.ulVis;
    try {
      final Uri uri = Uri.parse('$ulvisUrl?url=$url');
      final http.Response response = await http.get(uri);
      // check if the response is successful
      if (response.statusCode == 200) {
        final result = json.decode(response.body);
        final shrtcoEntities = UlvisEntity.fromJson(result);
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
