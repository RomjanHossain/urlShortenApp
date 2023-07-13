import 'package:url_shorten/data/repositories/tiny_url_repo_impl.dart';
import 'package:url_shorten/domain/entities/tinyurl_enitites.dart';

import '../../core/error/api_errors.dart';

class TinyUrlUsecase {
  TinyUrlRepoImpl repository = TinyUrlRepoImpl();

  /// get shorted url or erros
  Future<Result<TinyUrlEntities, Exception>> getShortUrl(
      String url, String custom) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return await repository.shortUrl(url, custom);
  }
}
