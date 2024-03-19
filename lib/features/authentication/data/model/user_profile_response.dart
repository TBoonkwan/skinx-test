import 'dart:convert';

/// country : "string"
/// display_name : "string"
/// email : "string"
/// explicit_content : {"filter_enabled":false,"filter_locked":false}
/// external_urls : {"spotify":"string"}
/// followers : {"href":"string","total":0}
/// href : "string"
/// id : "string"
/// images : [{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}]
/// product : "string"
/// type : "string"
/// uri : "string"

UserProfileResponse userProfileResponseFromJson(String str) =>
    UserProfileResponse.fromJson(json.decode(str));

String userProfileResponseToJson(UserProfileResponse data) =>
    json.encode(data.toJson());

class UserProfileResponse {
  UserProfileResponse({
    this.country,
    this.displayName,
    this.email,
    this.explicitContent,
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.images,
    this.product,
    this.type,
    this.uri,
  });

  UserProfileResponse.fromJson(dynamic json) {
    country = json['country'];
    displayName = json['display_name'];
    email = json['email'];
    explicitContent = json['explicit_content'] != null
        ? ExplicitContent.fromJson(json['explicit_content'])
        : null;
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    followers = json['followers'] != null
        ? Followers.fromJson(json['followers'])
        : null;
    href = json['href'];
    id = json['id'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    product = json['product'];
    type = json['type'];
    uri = json['uri'];
  }

  String? country;
  String? displayName;
  String? email;
  ExplicitContent? explicitContent;
  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  List<Images>? images;
  String? product;
  String? type;
  String? uri;

  UserProfileResponse copyWith({
    String? country,
    String? displayName,
    String? email,
    ExplicitContent? explicitContent,
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    List<Images>? images,
    String? product,
    String? type,
    String? uri,
  }) =>
      UserProfileResponse(
        country: country ?? this.country,
        displayName: displayName ?? this.displayName,
        email: email ?? this.email,
        explicitContent: explicitContent ?? this.explicitContent,
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        product: product ?? this.product,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['country'] = country;
    map['display_name'] = displayName;
    map['email'] = email;
    if (explicitContent != null) {
      map['explicit_content'] = explicitContent?.toJson();
    }
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    if (followers != null) {
      map['followers'] = followers?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['product'] = product;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}

/// url : "https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228"
/// height : 300
/// width : 300

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));

String imagesToJson(Images data) => json.encode(data.toJson());

class Images {
  Images({
    this.url,
    this.height,
    this.width,
  });

  Images.fromJson(dynamic json) {
    url = json['url'];
    height = json['height'];
    width = json['width'];
  }

  String? url;
  num? height;
  num? width;

  Images copyWith({
    String? url,
    num? height,
    num? width,
  }) =>
      Images(
        url: url ?? this.url,
        height: height ?? this.height,
        width: width ?? this.width,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['height'] = height;
    map['width'] = width;
    return map;
  }
}

/// href : "string"
/// total : 0

Followers followersFromJson(String str) => Followers.fromJson(json.decode(str));

String followersToJson(Followers data) => json.encode(data.toJson());

class Followers {
  Followers({
    this.href,
    this.total,
  });

  Followers.fromJson(dynamic json) {
    href = json['href'];
    total = json['total'];
  }

  String? href;
  num? total;

  Followers copyWith({
    String? href,
    num? total,
  }) =>
      Followers(
        href: href ?? this.href,
        total: total ?? this.total,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['total'] = total;
    return map;
  }
}

/// spotify : "string"

ExternalUrls externalUrlsFromJson(String str) =>
    ExternalUrls.fromJson(json.decode(str));

String externalUrlsToJson(ExternalUrls data) => json.encode(data.toJson());

class ExternalUrls {
  ExternalUrls({
    this.spotify,
  });

  ExternalUrls.fromJson(dynamic json) {
    spotify = json['spotify'];
  }

  String? spotify;

  ExternalUrls copyWith({
    String? spotify,
  }) =>
      ExternalUrls(
        spotify: spotify ?? this.spotify,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['spotify'] = spotify;
    return map;
  }
}

/// filter_enabled : false
/// filter_locked : false

ExplicitContent explicitContentFromJson(String str) =>
    ExplicitContent.fromJson(json.decode(str));

String explicitContentToJson(ExplicitContent data) =>
    json.encode(data.toJson());

class ExplicitContent {
  ExplicitContent({
    this.filterEnabled,
    this.filterLocked,
  });

  ExplicitContent.fromJson(dynamic json) {
    filterEnabled = json['filter_enabled'];
    filterLocked = json['filter_locked'];
  }

  bool? filterEnabled;
  bool? filterLocked;

  ExplicitContent copyWith({
    bool? filterEnabled,
    bool? filterLocked,
  }) =>
      ExplicitContent(
        filterEnabled: filterEnabled ?? this.filterEnabled,
        filterLocked: filterLocked ?? this.filterLocked,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['filter_enabled'] = filterEnabled;
    map['filter_locked'] = filterLocked;
    return map;
  }
}
