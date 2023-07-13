class RebrandlyEntities {
  final String id;
  final String title;
  final String slashtag;
  final String destination;
  final String createdAt;
  final String updatedAt;
  final String expiredAt;
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

  factory RebrandlyEntities.fromJson(Map<String, dynamic> json) {
    return RebrandlyEntities(
      id: json['id'],
      title: json['title'],
      slashtag: json['slashtag'],
      destination: json['destination'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
      expiredAt: json['expiredAt'],
      status: json['status'],
      tags: json['tags'],
      clicks: json['clicks'],
      isPublic: json['isPublic'],
      shortUrl: json['shortUrl'],
      domainId: json['domainId'],
      domainName: json['domainName'],
      domain: RebrandlyDomain.fromJson(json['domain']),
      https: json['https'],
      favourite: json['favourite'],
      creator: RebrandlyCreator.fromJson(json['creator']),
      integrated: json['integrated'],
      shortURL: json['shortURL'],
    );
  }
}

class RebrandlyDomain {
  final String id;
  final String ref;
  final String fullName;
  final RebrandlySharing sharing;
  final bool active;

  RebrandlyDomain({
    required this.id,
    required this.ref,
    required this.fullName,
    required this.sharing,
    required this.active,
  });

  factory RebrandlyDomain.fromJson(Map<String, dynamic> json) {
    return RebrandlyDomain(
      id: json['id'],
      ref: json['ref'],
      fullName: json['fullName'],
      sharing: RebrandlySharing.fromJson(json['sharing']),
      active: json['active'],
    );
  }
}

class RebrandlySharing {
  final RebrandlyProtocol protocol;

  RebrandlySharing({
    required this.protocol,
  });

  factory RebrandlySharing.fromJson(Map<String, dynamic> json) {
    return RebrandlySharing(
      protocol: RebrandlyProtocol.fromJson(json['protocol']),
    );
  }
}

class RebrandlyProtocol {
  final List<dynamic> allowed;
  final String defaultProtocol;

  RebrandlyProtocol({
    required this.allowed,
    required this.defaultProtocol,
  });

  factory RebrandlyProtocol.fromJson(Map<String, dynamic> json) {
    return RebrandlyProtocol(
      allowed: json['allowed'],
      defaultProtocol: json['default'],
    );
  }
}

class RebrandlyCreator {
  final String id;
  final String fullName;
  final String avatarUrl;

  RebrandlyCreator({
    required this.id,
    required this.fullName,
    required this.avatarUrl,
  });

  factory RebrandlyCreator.fromJson(Map<String, dynamic> json) {
    return RebrandlyCreator(
      id: json['id'],
      fullName: json['fullName'],
      avatarUrl: json['avatarUrl'],
    );
  }
}
