import 'dart:convert';

/// href : "https://api.spotify.com/v1/me/shows?offset=0&limit=20"
/// limit : 20
/// next : "https://api.spotify.com/v1/me/shows?offset=1&limit=1"
/// offset : 0
/// previous : "https://api.spotify.com/v1/me/shows?offset=1&limit=1"
/// total : 4
/// items : [{"collaborative":false,"description":"string","external_urls":{"spotify":"string"},"href":"string","id":"string","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","owner":{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"href":"string","id":"string","type":"user","uri":"string","display_name":"string"},"public":false,"snapshot_id":"string","tracks":{"href":"string","total":0},"type":"string","uri":"string"}]

MyPlaylistResponse myPlaylistResponseFromJson(String str) =>
    MyPlaylistResponse.fromJson(json.decode(str));

String myPlaylistResponseToJson(MyPlaylistResponse data) =>
    json.encode(data.toJson());

class MyPlaylistResponse {
  MyPlaylistResponse({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  MyPlaylistResponse.fromJson(dynamic json) {
    href = json['href'];
    limit = json['limit'];
    next = json['next'];
    offset = json['offset'];
    previous = json['previous'];
    total = json['total'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
  }

  String? href;
  num? limit;
  String? next;
  num? offset;
  String? previous;
  num? total;
  List<Items>? items;

  MyPlaylistResponse copyWith({
    String? href,
    num? limit,
    String? next,
    num? offset,
    String? previous,
    num? total,
    List<Items>? items,
  }) =>
      MyPlaylistResponse(
        href: href ?? this.href,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total,
        items: items ?? this.items,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    map['limit'] = limit;
    map['next'] = next;
    map['offset'] = offset;
    map['previous'] = previous;
    map['total'] = total;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// collaborative : false
/// description : "string"
/// external_urls : {"spotify":"string"}
/// href : "string"
/// id : "string"
/// images : [{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}]
/// name : "string"
/// owner : {"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"href":"string","id":"string","type":"user","uri":"string","display_name":"string"}
/// public : false
/// snapshot_id : "string"
/// tracks : {"href":"string","total":0}
/// type : "string"
/// uri : "string"

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    this.collaborative,
    this.description,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.owner,
    this.public,
    this.snapshotId,
    this.tracks,
    this.type,
    this.uri,
  });

  Items.fromJson(dynamic json) {
    collaborative = json['collaborative'];
    description = json['description'];
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    name = json['name'];
    owner = json['owner'] != null ? Owner.fromJson(json['owner']) : null;
    public = json['public'];
    snapshotId = json['snapshot_id'];
    tracks = json['tracks'] != null ? Tracks.fromJson(json['tracks']) : null;
    type = json['type'];
    uri = json['uri'];
  }

  bool? collaborative;
  String? description;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  Owner? owner;
  bool? public;
  String? snapshotId;
  Tracks? tracks;
  String? type;
  String? uri;

  Items copyWith({
    bool? collaborative,
    String? description,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Images>? images,
    String? name,
    Owner? owner,
    bool? public,
    String? snapshotId,
    Tracks? tracks,
    String? type,
    String? uri,
  }) =>
      Items(
        collaborative: collaborative ?? this.collaborative,
        description: description ?? this.description,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        owner: owner ?? this.owner,
        public: public ?? this.public,
        snapshotId: snapshotId ?? this.snapshotId,
        tracks: tracks ?? this.tracks,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['collaborative'] = collaborative;
    map['description'] = description;
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['name'] = name;
    if (owner != null) {
      map['owner'] = owner?.toJson();
    }
    map['public'] = public;
    map['snapshot_id'] = snapshotId;
    if (tracks != null) {
      map['tracks'] = tracks?.toJson();
    }
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}

/// href : "string"
/// total : 0

Tracks tracksFromJson(String str) => Tracks.fromJson(json.decode(str));

String tracksToJson(Tracks data) => json.encode(data.toJson());

class Tracks {
  Tracks({
    this.href,
    this.total,
  });

  Tracks.fromJson(dynamic json) {
    href = json['href'];
    total = json['total'];
  }

  String? href;
  num? total;

  Tracks copyWith({
    String? href,
    num? total,
  }) =>
      Tracks(
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

/// external_urls : {"spotify":"string"}
/// followers : {"href":"string","total":0}
/// href : "string"
/// id : "string"
/// type : "user"
/// uri : "string"
/// display_name : "string"

Owner ownerFromJson(String str) => Owner.fromJson(json.decode(str));

String ownerToJson(Owner data) => json.encode(data.toJson());

class Owner {
  Owner({
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
    this.displayName,
  });

  Owner.fromJson(dynamic json) {
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    followers = json['followers'] != null
        ? Followers.fromJson(json['followers'])
        : null;
    href = json['href'];
    id = json['id'];
    type = json['type'];
    uri = json['uri'];
    displayName = json['display_name'];
  }

  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  String? type;
  String? uri;
  String? displayName;

  Owner copyWith({
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    String? type,
    String? uri,
    String? displayName,
  }) =>
      Owner(
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        displayName: displayName ?? this.displayName,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    if (followers != null) {
      map['followers'] = followers?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    map['type'] = type;
    map['uri'] = uri;
    map['display_name'] = displayName;
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
