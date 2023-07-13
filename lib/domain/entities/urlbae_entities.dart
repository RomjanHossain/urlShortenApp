class UrlBaeEntity {
  UrlBaeEntity({
    required String id,
    required String shortUrl,
    required String? error,
  });

  factory UrlBaeEntity.fromJson(Map<String, dynamic> json) {
    return UrlBaeEntity(
      id: json['id'],
      shortUrl: json['shorturl'],
      error: json['error'],
    );
  }
}
