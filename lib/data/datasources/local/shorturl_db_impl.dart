import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';

class ShortDBImplementation {
  late Future<Isar> db;
  ShortDBImplementation() {
    db = openIsar();
  }

  /// insert data to db
  Future<void> insertShortUrl(ShortUrlContainerDBModel shortUrl) async {
    final isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shortUrlContainerDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShortUrl(int id) async {
    final isar = await db;
    await isar.shortUrlContainerDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShortUrlContainerDBModel>> getAllShortUrl() async {
    final isar = await db;
    return isar.shortUrlContainerDBModels.where().findAll();
  }

  /// open the db
  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([ShortUrlContainerDBModelSchema],
          directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }
}
