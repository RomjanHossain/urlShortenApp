import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
import 'package:url_shorten/data/models/shrtco_fav_db_model.dart';

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
    // return isar.shortUrlContainerDBModels.where().findAll();
    /// return sort by createdAt
    return isar.shortUrlContainerDBModels
        .where()
        .sortByCreationDateDesc()
        .findAll();
  }

  ///! shrt co url start
  /// insert data to db
  Future<void> insertShrCotUrl(ShrtcoDBModel shortUrl) async {
    final isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shrtcoDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShrtCoUrl(int id) async {
    final isar = await db;
    await isar.shrtcoDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShrtcoDBModel>> getAllShrtCoUrl() async {
    final isar = await db;
    return isar.shrtcoDBModels.where().sortByCreationDateDesc().findAll();
  }

  ///! END
  ///
  ///
  ///! shrt co url start FAV
  /// insert data to db
  Future<void> insertShrCotUrlFAV(ShrtcoFavDBModel shortUrl) async {
    final isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shrtcoFavDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShrtCoUrlFAV(int id) async {
    final isar = await db;
    await isar.shrtcoFavDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShrtcoFavDBModel>> getAllShrtCoUrlFAV() async {
    final isar = await db;
    return isar.shrtcoFavDBModels.where().sortByCreationDateDesc().findAll();
  }

  ///! END
  /// insert data to db
  Future<void> insertShortUrlFAV(ShortUrlFavContainerDBModel shortUrl) async {
    final isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shortUrlFavContainerDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShortUrlFAV(int id) async {
    final isar = await db;
    await isar.shortUrlFavContainerDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShortUrlFavContainerDBModel>> getAllShortUrlFAV() async {
    final isar = await db;
    // return isar.shortUrlContainerDBModels.where().findAll();
    /// return sort by createdAt
    return isar.shortUrlFavContainerDBModels
        .where()
        .sortByCreationDateDesc()
        .findAll();
  }

  /// open the db
  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([
        ShortUrlContainerDBModelSchema,
        ShrtcoDBModelSchema,
        ShortUrlFavContainerDBModelSchema,
        ShrtcoFavDBModelSchema
      ], directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }
}
