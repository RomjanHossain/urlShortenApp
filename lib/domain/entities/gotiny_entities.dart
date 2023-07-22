class GotinyEntity {
  GotinyEntity({
    this.long,
    this.code,
  });

  factory GotinyEntity.fromJson(Map<String, dynamic> json) => GotinyEntity(
        long: json['long'].toString(),
        code: json['code'].toString(),
      );
  final String? long;
  final String? code;

  Map<String, dynamic> toJson() => <String, dynamic>{
        'long': long,
        'code': code,
      };
}
