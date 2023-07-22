class RebrandlyEntities {
  RebrandlyEntities({
    required this.id,
    required this.title,
    required this.slashtag,
    required this.destination,
    required this.createdAt,
    required this.updatedAt,
    required this.expiredAt,
    required this.status,
    required this.tags,
    required this.clicks,
    required this.isPublic,
    required this.shortUrl,
    required this.domainId,
    required this.domainName,
    required this.domain,
    required this.https,
    required this.favourite,
    required this.creator,
    required this.integrated,
    required this.shortURL,
  });

  factory RebrandlyEntities.fromJson(Map<String, dynamic> json) =>
      RebrandlyEntities(
        id: json['id'].toString(),
        title: json['title'].toString(),
        slashtag: json['slashtag'].toString(),
        destination: json['destination'].toString(),
        createdAt: json['createdAt'].toString(),
        updatedAt: json['updatedAt'].toString(),
        expiredAt: json['expiredAt'].toString(),
        status: json['status'].toString(),
        tags: json['tags'] as List<dynamic>,
        clicks: json['clicks'] as int,
        isPublic: json['isPublic'] as bool,
        shortUrl: json['shortUrl'].toString(),
        domainId: json['domainId'].toString(),
        domainName: json['domainName'].toString(),
        domain:
            RebrandlyDomain.fromJson(json['domain'] as Map<String, dynamic>),
        https: json['https'] as bool,
        favourite: json['favourite'] as bool,
        creator:
            RebrandlyCreator.fromJson(json['creator'] as Map<String, dynamic>),
        integrated: json['integrated'] as bool,
        shortURL: json['shortURL'].toString(),
      );
  final String id;
  final String title;
  final String slashtag;
  final String destination;
  final String createdAt;
  final String updatedAt;
  final String? expiredAt;
  final String status;
  final List<dynamic> tags;
  final int clicks;
  final bool isPublic;
  final String shortUrl;
  final String domainId;
  final String domainName;
  final RebrandlyDomain domain;
  final bool https;
  final bool favourite;
  final RebrandlyCreator creator;
  final bool integrated;
  final String shortURL;
}

class RebrandlyDomain {
  RebrandlyDomain({
    required this.id,
    required this.ref,
    required this.fullName,
    required this.sharing,
    required this.active,
  });

  factory RebrandlyDomain.fromJson(Map<String, dynamic> json) =>
      RebrandlyDomain(
        id: json['id'].toString(),
        ref: json['ref'].toString(),
        fullName: json['fullName'].toString(),
        sharing:
            RebrandlySharing.fromJson(json['sharing'] as Map<String, dynamic>),
        active: json['active'] as bool,
      );
  final String id;
  final String ref;
  final String fullName;
  final RebrandlySharing sharing;
  final bool active;
}

class RebrandlySharing {
  RebrandlySharing({
    required this.protocol,
  });

  factory RebrandlySharing.fromJson(Map<String, dynamic> json) =>
      RebrandlySharing(
        protocol: RebrandlyProtocol.fromJson(
            json['protocol'] as Map<String, dynamic>,),
      );
  final RebrandlyProtocol protocol;
}

class RebrandlyProtocol {
  RebrandlyProtocol({
    required this.allowed,
    required this.defaultProtocol,
  });

  factory RebrandlyProtocol.fromJson(Map<String, dynamic> json) =>
      RebrandlyProtocol(
        allowed: json['allowed'] as List<dynamic>,
        defaultProtocol: json['default'].toString(),
      );
  final List<dynamic> allowed;
  final String defaultProtocol;
}

class RebrandlyCreator {
  RebrandlyCreator({
    required this.id,
    required this.fullName,
    required this.avatarUrl,
  });

  factory RebrandlyCreator.fromJson(Map<String, dynamic> json) =>
      RebrandlyCreator(
        id: json['id'].toString(),
        fullName: json['fullName'].toString(),
        avatarUrl: json['avatarUrl'].toString(),
      );
  final String id;
  final String fullName;
  final String avatarUrl;
}
