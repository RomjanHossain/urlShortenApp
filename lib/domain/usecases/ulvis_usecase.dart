import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/data/repositories/ulvis_repo_impl.dart';
import 'package:url_shorten/domain/entities/ulvis_entities.dart';

class UlvisUseCase {
  UlvisRepoImpl repository = UlvisRepoImpl();

  /// get list of free short url or erros
  Future<Result<UlvisEntity, Exception>> getShortUrl(String url) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return await repository.shortUrl(url);
  }

  /// get list of premium short url or erros
  Future<Result<UlvisEntity, Exception>> getShortPremiumUrl(
      String url, String custom) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return await repository.prShortUrl(url, custom);
  }
}
