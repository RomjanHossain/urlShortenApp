/// clean uri entities
class CleanUriEntities {
  CleanUriEntities({
    required this.resultUrl,
  });

  factory CleanUriEntities.fromJson(Map<String, dynamic> json) =>
      CleanUriEntities(
        resultUrl: json["result_url"].toString(),
      );

  final String resultUrl;
}
