/// ulvis entity
class UlvisEntity {
  UlvisEntity({
    required this.success,
    required this.data,
  });

  factory UlvisEntity.fromJson(Map<String, dynamic> json) => UlvisEntity(
        success: json["success"] as bool,
        data: UlvisDataEntity.fromJson(json["data"] as Map<String, dynamic>),
      );

  bool success;
  UlvisDataEntity data;
}

/// data entity
class UlvisDataEntity {
  UlvisDataEntity({
    required this.id,
    required this.url,
    required this.full,
  });

  factory UlvisDataEntity.fromJson(Map<String, dynamic> json) =>
      UlvisDataEntity(
        id: json["id"].toString(),
        url: json["url"].toString(),
        full: json["full"].toString(),
      );

  String id;
  String url;
  String full;
}
