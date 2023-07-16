import 'package:isar/isar.dart';

part 'shrtco_fav_db_model.g.dart';

@collection
class ShrtcoFavDBModel {
  Id id = Isar.autoIncrement; // auto increment id
  String? originalLink;
  String? shrtLink1;
  String? shrtLink2;
  String? shrtLink3;
  DateTime creationDate = DateTime.now();
}
