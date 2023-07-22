import 'dart:io';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_shorten/data/models/shorturl_container_db_model.dart';
import 'package:url_shorten/data/models/shorturl_container_fav_db_model.dart';
import 'package:url_shorten/data/models/shrtco_db_model.dart';
import 'package:url_shorten/data/models/shrtco_fav_db_model.dart';

class ShortDBImplementation {
  ShortDBImplementation() {
    // ignore: discarded_futures
    db = openIsar();
  }
  late Future<Isar> db;

  /// insert data to db
  Future<void> insertShortUrl(ShortUrlContainerDBModel shortUrl) async {
    final Isar isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shortUrlContainerDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// check if the url exists
  Future<bool> checkIfUrlExists(String url) async {
    final Isar isar = await db;
    final List<ShortUrlFavContainerDBModel> data = await isar
        .shortUrlFavContainerDBModels
        .where()
        .filter()
        .shortLinkEqualTo(url)
        .findAll();
    if (data.isEmpty) {
      return false;
    }
    return true;
  }

  /// remove data from db
  Future<void> removeShortUrl(int id) async {
    final Isar isar = await db;
    await isar.writeTxn(() => isar.shortUrlContainerDBModels.delete(id));
    // await isar.shortUrlContainerDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShortUrlContainerDBModel>> getAllShortUrl() async {
    final Isar isar = await db;
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
    final Isar isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shrtcoDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// check if the shrtco url exists
  Future<bool> checkIfShrtCoUrlExists(String url) async {
    final Isar isar = await db;
    final List<ShrtcoFavDBModel> data = await isar.shrtcoFavDBModels
        .where()
        .filter()
        .originalLinkEqualTo(url)
        .findAll();
    if (data.isEmpty) {
      return false;
    }
    return true;
  }

  /// remove data from db
  Future<void> removeShrtCoUrl(int id) async {
    final Isar isar = await db;
    await isar.writeTxn(() => isar.shrtcoDBModels.delete(id));
    // await isar.shrtcoDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShrtcoDBModel>> getAllShrtCoUrl() async {
    final Isar isar = await db;
    return isar.shrtcoDBModels.where().sortByCreationDateDesc().findAll();
  }

  ///! END
  ///
  ///
  ///! shrt co url start FAV
  /// insert data to db
  Future<void> insertShrCotUrlFAV(ShrtcoFavDBModel shortUrl) async {
    final Isar isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shrtcoFavDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShrtCoUrlFAV(int id) async {
    final Isar isar = await db;
    await isar.writeTxn(() => isar.shrtcoFavDBModels.delete(id));
    // await isar.shrtcoFavDBModels.delete(id);
  }

  /// get all data from db
  Future<List<ShrtcoFavDBModel>> getAllShrtCoUrlFAV() async {
    final Isar isar = await db;
    return isar.shrtcoFavDBModels.where().sortByCreationDateDesc().findAll();
  }

  ///! END
  /// insert data to db
  Future<void> insertShortUrlFAV(ShortUrlFavContainerDBModel shortUrl) async {
    final Isar isar = await db;
    isar.writeTxnSync<int>(
      () => isar.shortUrlFavContainerDBModels.putSync(
        shortUrl,
      ),
    );
  }

  /// remove data from db
  Future<void> removeShortUrlFAV(int id) async {
    final Isar isar = await db;
    // await isar.writeTxn(() {
    //   isar.shortUrlFavContainerDBModels.delete(id);
    // });
    await isar.writeTxn(() => isar.shortUrlFavContainerDBModels.delete(id));
  }

  /// get all data from db
  Future<List<ShortUrlFavContainerDBModel>> getAllShortUrlFAV() async {
    final Isar isar = await db;
    // return isar.shortUrlContainerDBModels.where().findAll();
    /// return sort by createdAt
    return isar.shortUrlFavContainerDBModels
        .where()
        .sortByCreationDateDesc()
        .findAll();
  }

  /// remove all history
  Future<void> removeAllHistory() async {
    final Isar isar = await db;
    final List<ShortUrlContainerDBModel> allHistory = await isar
        .shortUrlContainerDBModels
        .where()
        .sortByCreationDateDesc()
        .findAll();
    final List<ShrtcoDBModel> allHistoryShrt =
        await isar.shrtcoDBModels.where().sortByCreationDateDesc().findAll();

    /// remove all history
    for (final ShortUrlContainerDBModel history in allHistory) {
      await isar.writeTxn(
        () => isar.shortUrlContainerDBModels.delete(history.id),
      );
    }
    for (final ShrtcoDBModel history in allHistoryShrt) {
      await isar.writeTxn(
        () => isar.shrtcoDBModels.delete(history.id),
      );
    }
  }

  /// remove all fav
  Future<void> removeAllFav() async {
    final Isar isar = await db;
    final List<ShortUrlFavContainerDBModel> allFav = await isar
        .shortUrlFavContainerDBModels
        .where()
        .sortByCreationDateDesc()
        .findAll();
    final List<ShrtcoFavDBModel> allFavShrt =
        await isar.shrtcoFavDBModels.where().sortByCreationDateDesc().findAll();

    /// remove all fav
    for (final ShortUrlFavContainerDBModel fav in allFav) {
      await isar.writeTxn(
        () => isar.shortUrlFavContainerDBModels.delete(fav.id),
      );
    }
    for (final ShrtcoFavDBModel fav in allFavShrt) {
      await isar.writeTxn(
        () => isar.shrtcoFavDBModels.delete(fav.id),
      );
    }
  }

  /// open the db
  Future<Isar> openIsar() async {
    final Directory dir = await getApplicationDocumentsDirectory();
    if (Isar.instanceNames.isEmpty) {
      return Isar.open(
        <CollectionSchema<dynamic>>[
          ShortUrlContainerDBModelSchema,
          ShrtcoDBModelSchema,
          ShortUrlFavContainerDBModelSchema,
          ShrtcoFavDBModelSchema
        ],
        directory: dir.path,
      );
    }
    return Future<Isar>.value(Isar.getInstance());
  }
}
