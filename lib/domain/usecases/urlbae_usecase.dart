import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/data/repositories/urlbae_repo_impl.dart';
import 'package:url_shorten/domain/entities/urlbae_entities.dart';

class UrlBaeUseCase {
  UrlBaeRepoImpl repository = UrlBaeRepoImpl();

  /// get shorted url or erros
  Future<Result<UrlBaeEntity, Exception>> getShortUrl(
      String url, String custom) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return await repository.shortUrl(url, custom);
  }
}
