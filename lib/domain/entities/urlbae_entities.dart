class UrlBaeEntity {
  UrlBaeEntity({
    required this.id,
    required this.shortUrl,
    required this.error,
  });

  final String? id;
  final String? shortUrl;
  final int? error;

  factory UrlBaeEntity.fromJson(Map<String, dynamic> json) {
    return UrlBaeEntity(
      id: json['id'],
      shortUrl: json['shorturl'],
      error: json['error'],
    );
  }
}
