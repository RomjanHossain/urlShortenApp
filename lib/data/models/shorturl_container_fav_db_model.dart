import 'package:isar/isar.dart';

part 'shorturl_container_fav_db_model.g.dart';

@collection
class ShortUrlFavContainerDBModel {
  Id id = Isar.autoIncrement; // auto increment id
  String? originalLink;
  String? domain;
  String? shortLink;
  bool isAlias = false;

  /// datetime of creation
  DateTime creationDate = DateTime.now();
}
