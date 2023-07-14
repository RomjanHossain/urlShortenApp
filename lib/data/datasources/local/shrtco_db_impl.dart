import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';

class ShrtCoDBImplementation {
  late Future<Isar> db;
  ShrtCoDBImplementation() {
    db = openIsar();
  }

  /// insert data to db
  Future<void> insertShortUrl(ShrtcoDBModel shortUrl) async {
    final isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shrtcoDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShortUrl(int id) async {
    final isar = await db;
    await isar.shrtcoDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShrtcoDBModel>> getAllShortUrl() async {
    final isar = await db;
    return isar.shrtcoDBModels.where().findAll();
  }

  /// open the db
  Future<Isar> openIsar() async {
    final dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open([ShrtcoDBModelSchema], directory: dir.path);
    }
    return Future.value(Isar.getInstance());
  }
}
