import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/data/repositories/free_shorturl_repo_impl.dart';
import 'package:url_shorten/domain/entities/shrtco_entities.dart';

class ShrtCOUrlUseCase {
  // final ShortUrlRepository repository;

  // ShrtCOUrlUseCase(this.repository);

  /// get list of free short url or erros
  Future<Result<ShrtcoEntity, Exception>> getShortUrl(String url) async {
    final ShortUrlRepoImpl repository = ShortUrlRepoImpl();
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return repository.freeShortUrl(url);
  }
}
