class GotinyEntity {
  final String? long;
  final String? code;

  GotinyEntity({
    this.long,
    this.code,
  });

  factory GotinyEntity.fromJson(Map<String, dynamic> json) {
    return GotinyEntity(
      long: json['long'],
      code: json['code'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'long': long,
      'code': code,
    };
  }
}
