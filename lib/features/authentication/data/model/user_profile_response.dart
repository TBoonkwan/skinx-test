import 'dart:convert';

/// display_name : "เจ"
/// external_urls : {"spotify":"https://open.spotify.com/user/314jbffzffeapvzftmky6klh6eka"}
/// href : "https://api.spotify.com/v1/users/314jbffzffeapvzftmky6klh6eka"
/// id : "314jbffzffeapvzftmky6klh6eka"
/// images : []
/// type : "user"
/// uri : "spotify:user:314jbffzffeapvzftmky6klh6eka"
/// followers : {"href":null,"total":0}
/// country : "TH"
/// product : "free"
/// explicit_content : {"filter_enabled":false,"filter_locked":false}
/// email : "teerapongb.payment@gmail.com"

UserProfileResponse userProfileResponseFromJson(String str) =>
    UserProfileResponse.fromJson(json.decode(str));

String userProfileResponseToJson(UserProfileResponse data) =>
    json.encode(data.toJson());

class UserProfileResponse {
  UserProfileResponse({
    this.displayName,
    this.externalUrls,
    this.href,
    this.id,
    this.type,
    this.uri,
    this.followers,
    this.country,
    this.product,
    this.explicitContent,
    this.email,
  });

  UserProfileResponse.fromJson(dynamic json) {
    displayName = json['display_name'];
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    type = json['type'];
    uri = json['uri'];
    followers = json['followers'] != null
        ? Followers.fromJson(json['followers'])
        : null;
    country = json['country'];
    product = json['product'];
    explicitContent = json['explicit_content'] != null
        ? ExplicitContent.fromJson(json['explicit_content'])
        : null;
    email = json['email'];
  }

  String? displayName;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? type;
  String? uri;
  Followers? followers;
  String? country;
  String? product;
  ExplicitContent? explicitContent;
  String? email;

  UserProfileResponse copyWith({
    String? displayName,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? type,
    String? uri,
    Followers? followers,
    String? country,
    String? product,
    ExplicitContent? explicitContent,
    String? email,
  }) =>
      UserProfileResponse(
        displayName: displayName ?? this.displayName,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        followers: followers ?? this.followers,
        country: country ?? this.country,
        product: product ?? this.product,
        explicitContent: explicitContent ?? this.explicitContent,
        email: email ?? this.email,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['display_name'] = displayName;
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    map['type'] = type;
    map['uri'] = uri;
    if (followers != null) {
      map['followers'] = followers?.toJson();
    }
    map['country'] = country;
    map['product'] = product;
    if (explicitContent != null) {
      map['explicit_content'] = explicitContent?.toJson();
    }
    map['email'] = email;
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

/// href : null
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

  dynamic href;
  num? total;

  Followers copyWith({
    dynamic href,
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

/// spotify : "https://open.spotify.com/user/314jbffzffeapvzftmky6klh6eka"

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
