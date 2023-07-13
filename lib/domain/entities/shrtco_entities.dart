import 'package:equatable/equatable.dart';

/// ShrtcoEntity
class ShrtcoEntity extends Equatable {
  /// code
  final String code;

  /// shortLink
  final String shortLink;

  /// fullShortLink
  final String fullShortLink;

  /// shortLink2
  final String shortLink2;

  /// fullShortLink2
  final String fullShortLink2;

  /// shortLink3
  final String shortLink3;

  /// fullShortLink3
  final String fullShortLink3;

  /// shareLink
  final String shareLink;

  /// fullShareLink
  final String fullShareLink;

  /// originalLink
  final String originalLink;

  /// constructor
  const ShrtcoEntity({
    required this.code,
    required this.shortLink,
    required this.fullShortLink,
    required this.shortLink2,
    required this.fullShortLink2,
    required this.shortLink3,
    required this.fullShortLink3,
    required this.shareLink,
    required this.fullShareLink,
    required this.originalLink,
  });

  /// fromJson
  factory ShrtcoEntity.fromJson(Map<String, dynamic> json) => ShrtcoEntity(
        code: json['code'] as String,
        shortLink: json['short_link'] as String,
        fullShortLink: json['full_short_link'] as String,
        shortLink2: json['short_link2'] as String,
        fullShortLink2: json['full_short_link2'] as String,
        shortLink3: json['short_link3'] as String,
        fullShortLink3: json['full_short_link3'] as String,
        shareLink: json['share_link'] as String,
        fullShareLink: json['full_share_link'] as String,
        originalLink: json['original_link'] as String,
      );

  @override
  List<Object?> get props => [
        code,
        shortLink,
        fullShortLink,
        shortLink2,
        fullShortLink2,
        shortLink3,
        fullShortLink3,
        shareLink,
        fullShareLink,
        originalLink,
      ];
}
