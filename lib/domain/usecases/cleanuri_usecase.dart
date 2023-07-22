import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/data/repositories/cleanuri_repo_impl.dart';
import 'package:url_shorten/domain/entities/cleanuri_entities.dart';

class CleanUriUseCase {
  CleanUriRepoImpl repository = CleanUriRepoImpl();

  /// get shorted url or erros
  // ignore: prefer_expression_function_bodies
  Future<Result<CleanUriEntities, Exception>> getShortUrl(String url) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return repository.shortUrl(url);
  }
}
