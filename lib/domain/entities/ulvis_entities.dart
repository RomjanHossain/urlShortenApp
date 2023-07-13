/// ulvis entity
class UlvisEntity {
  UlvisEntity({
    required this.success,
    required this.data,
  });

  bool success;
  UlvisDataEntity data;

  factory UlvisEntity.fromJson(Map<String, dynamic> json) => UlvisEntity(
        success: json["success"],
        data: UlvisDataEntity.fromJson(json["data"]),
      );
}

/// data entity
class UlvisDataEntity {
  UlvisDataEntity({
    required this.id,
    required this.url,
    required this.full,
  });

  String id;
  String url;
  String full;

  factory UlvisDataEntity.fromJson(Map<String, dynamic> json) =>
      UlvisDataEntity(
        id: json["id"],
        url: json["url"],
        full: json["full"],
      );
}
