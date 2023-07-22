import 'package:url_shorten/core/error/api_errors.dart';
import 'package:url_shorten/data/repositories/rebrandly_repo_impl.dart';
import 'package:url_shorten/domain/entities/rebrandly_entities.dart';

class RebrandlyUseCase {
  RebrandlyRepoImp repository = RebrandlyRepoImp();

  /// get shorted url or erros
  Future<Result<RebrandlyEntities, Exception>> getShortUrl(
    String url,
    String custom,
    // ignore: prefer_expression_function_bodies
  ) async {
    /*
    !!!If theres any business logic that needs to be done 
    !!!before returning the data, it should be done here
    */
    return repository.shortUrl(url, custom);
  }
}
