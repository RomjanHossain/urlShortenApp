class TinyUrlEntities {
  TinyUrlEntities({
    this.data,
    this.code,
    this.errors,
  });

  Data? data;
  int? code;
  List<dynamic>? errors;

  factory TinyUrlEntities.fromJson(Map<String, dynamic> json) =>
      TinyUrlEntities(
        data: Data.fromJson(json["data"]),
        code: json["code"],
        errors: List<dynamic>.from(json["errors"].map((x) => x)),
      );
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

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        domain: json["domain"],
        alias: json["alias"],
        deleted: json["deleted"],
        archived: json["archived"],
        analytics: Analytics.fromJson(json["analytics"]),
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        createdAt: DateTime.parse(json["created_at"]),
        expiresAt: json["expires_at"],
        tinyUrl: json["tiny_url"],
        url: json["url"],
      );
}

class Analytics {
  Analytics({
    this.enabled,
    this.public,
  });

  bool? enabled;
  bool? public;

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
        enabled: json["enabled"],
        public: json["public"],
      );
}
