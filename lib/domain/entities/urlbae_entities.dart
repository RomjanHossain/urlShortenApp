class UrlBaeEntity {
  UrlBaeEntity({
    required this.id,
    required this.shortUrl,
    required this.error,
  });

  factory UrlBaeEntity.fromJson(Map<String, dynamic> json) => UrlBaeEntity(
        id: json['id'].toString(),
        shortUrl: json['shorturl'].toString(),
        error: json['error'] as int?,
      );

  final String? id;
  final String? shortUrl;
  final int? error;
}
