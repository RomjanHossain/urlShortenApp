class TinyUrlEntities {
  TinyUrlEntities({
    this.data,
    this.code,
    this.errors,
  });

  factory TinyUrlEntities.fromJson(Map<String, dynamic> json) =>
      TinyUrlEntities(
        data: Data.fromJson(json["data"] as Map<String, dynamic>),
        code: json["code"] as int?,
        // ignore: always_specify_types, avoid_dynamic_calls
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
      );

  Data? data;
  int? code;
  List<dynamic>? errors;
}

class Data {
  Data({
    this.domain,
    this.alias,
    this.deleted,
    this.archived,
    this.analytics,
    this.tags,
    this.createdAt,
    this.expiresAt,
    this.tinyUrl,
    this.url,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        domain: json["domain"].toString(),
        alias: json["alias"].toString(),
        deleted: json["deleted"] as bool?,
        archived: json["archived"] as bool?,
        analytics:
            Analytics.fromJson(json["analytics"] as Map<String, dynamic>),
        // ignore: always_specify_types, avoid_dynamic_calls
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"].toString()),
        expiresAt: json["expires_at"].toString(),
        tinyUrl: json["tiny_url"].toString(),
        url: json["url"].toString(),
      );

  String? domain;
  String? alias;
  bool? deleted;
  bool? archived;
  Analytics? analytics;
  List<dynamic>? tags;
  DateTime? createdAt;
  dynamic expiresAt;
  String? tinyUrl;
  String? url;
}

class Analytics {
  Analytics({
    this.enabled,
    this.public,
  });

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
        enabled: json["enabled"] as bool?,
        public: json["public"] as bool?,
      );

  bool? enabled;
  bool? public;
}
