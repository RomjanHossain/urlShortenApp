import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/data/repositories/cleanuri_repo_impl.dart';
import 'package:url_shorten/data/repositories/gotiny_repo_impl.dart';
import 'package:url_shorten/domain/entities/gotiny_entities.dart';

class GotinyUseCase {
  GotinyRepoImpl repository = GotinyRepoImpl();

  /// get shorted url or erros
  Future<Result<GotinyEntity, Exception>> getShortUrl(String url) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return await repository.shortUrl(url);
  }
}
