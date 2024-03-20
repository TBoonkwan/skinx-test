import 'dart:convert';

/// collaborative : false
/// description : "string"
/// external_urls : {"spotify":"string"}
/// followers : {"href":"string","total":0}
/// href : "string"
/// id : "string"
/// images : [{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}]
/// name : "string"
/// owner : {"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"href":"string","id":"string","type":"user","uri":"string","display_name":"string"}
/// public : false
/// snapshot_id : "string"
/// tracks : {"href":"https://api.spotify.com/v1/me/shows?offset=0&limit=20","limit":20,"next":"https://api.spotify.com/v1/me/shows?offset=1&limit=1","offset":0,"previous":"https://api.spotify.com/v1/me/shows?offset=1&limit=1","total":4,"items":[{"added_at":"string","added_by":{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"href":"string","id":"string","type":"user","uri":"string"},"is_local":false,"track":{"album":{"album_type":"compilation","total_tracks":9,"available_markets":["CA","BR","IT"],"external_urls":{"spotify":"string"},"href":"string","id":"2up3OPMp9Tb4dAKM2erWXQ","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","release_date":"1981-12","release_date_precision":"year","restrictions":{"reason":"market"},"type":"album","uri":"spotify:album:2up3OPMp9Tb4dAKM2erWXQ","artists":[{"external_urls":{"spotify":"string"},"href":"string","id":"string","name":"string","type":"artist","uri":"string"}]},"artists":[{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"genres":["Prog rock","Grunge"],"href":"string","id":"string","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","popularity":0,"type":"artist","uri":"string"}],"available_markets":["string"],"disc_number":0,"duration_ms":0,"explicit":false,"external_ids":{"isrc":"string","ean":"string","upc":"string"},"external_urls":{"spotify":"string"},"href":"string","id":"string","is_playable":false,"linked_from":{},"restrictions":{"reason":"string"},"name":"string","popularity":0,"preview_url":"string","track_number":0,"type":"track","uri":"string","is_local":false}}]}
/// type : "string"
/// uri : "string"

PlaylistDetailResponse playlistDetailReponseFromJson(String str) =>
    PlaylistDetailResponse.fromJson(json.decode(str));

String playlistDetailReponseToJson(PlaylistDetailResponse data) =>
    json.encode(data.toJson());

class PlaylistDetailResponse {
  PlaylistDetailResponse({
    this.collaborative,
    this.description,
    this.externalUrls,
    this.followers,
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

  PlaylistDetailResponse.fromJson(dynamic json) {
    collaborative = json['collaborative'];
    description = json['description'];
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
  Followers? followers;
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

  PlaylistDetailResponse copyWith({
    bool? collaborative,
    String? description,
    ExternalUrls? externalUrls,
    Followers? followers,
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
      PlaylistDetailResponse(
        collaborative: collaborative ?? this.collaborative,
        description: description ?? this.description,
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
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
    if (followers != null) {
      map['followers'] = followers?.toJson();
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

/// href : "https://api.spotify.com/v1/me/shows?offset=0&limit=20"
/// limit : 20
/// next : "https://api.spotify.com/v1/me/shows?offset=1&limit=1"
/// offset : 0
/// previous : "https://api.spotify.com/v1/me/shows?offset=1&limit=1"
/// total : 4
/// items : [{"added_at":"string","added_by":{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"href":"string","id":"string","type":"user","uri":"string"},"is_local":false,"track":{"album":{"album_type":"compilation","total_tracks":9,"available_markets":["CA","BR","IT"],"external_urls":{"spotify":"string"},"href":"string","id":"2up3OPMp9Tb4dAKM2erWXQ","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","release_date":"1981-12","release_date_precision":"year","restrictions":{"reason":"market"},"type":"album","uri":"spotify:album:2up3OPMp9Tb4dAKM2erWXQ","artists":[{"external_urls":{"spotify":"string"},"href":"string","id":"string","name":"string","type":"artist","uri":"string"}]},"artists":[{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"genres":["Prog rock","Grunge"],"href":"string","id":"string","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","popularity":0,"type":"artist","uri":"string"}],"available_markets":["string"],"disc_number":0,"duration_ms":0,"explicit":false,"external_ids":{"isrc":"string","ean":"string","upc":"string"},"external_urls":{"spotify":"string"},"href":"string","id":"string","is_playable":false,"linked_from":{},"restrictions":{"reason":"string"},"name":"string","popularity":0,"preview_url":"string","track_number":0,"type":"track","uri":"string","is_local":false}}]

Tracks tracksFromJson(String str) => Tracks.fromJson(json.decode(str));

String tracksToJson(Tracks data) => json.encode(data.toJson());

class Tracks {
  Tracks({
    this.href,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
    this.items,
  });

  Tracks.fromJson(dynamic json) {
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

  Tracks copyWith({
    String? href,
    num? limit,
    String? next,
    num? offset,
    String? previous,
    num? total,
    List<Items>? items,
  }) =>
      Tracks(
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

/// added_at : "string"
/// added_by : {"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"href":"string","id":"string","type":"user","uri":"string"}
/// is_local : false
/// track : {"album":{"album_type":"compilation","total_tracks":9,"available_markets":["CA","BR","IT"],"external_urls":{"spotify":"string"},"href":"string","id":"2up3OPMp9Tb4dAKM2erWXQ","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","release_date":"1981-12","release_date_precision":"year","restrictions":{"reason":"market"},"type":"album","uri":"spotify:album:2up3OPMp9Tb4dAKM2erWXQ","artists":[{"external_urls":{"spotify":"string"},"href":"string","id":"string","name":"string","type":"artist","uri":"string"}]},"artists":[{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"genres":["Prog rock","Grunge"],"href":"string","id":"string","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","popularity":0,"type":"artist","uri":"string"}],"available_markets":["string"],"disc_number":0,"duration_ms":0,"explicit":false,"external_ids":{"isrc":"string","ean":"string","upc":"string"},"external_urls":{"spotify":"string"},"href":"string","id":"string","is_playable":false,"linked_from":{},"restrictions":{"reason":"string"},"name":"string","popularity":0,"preview_url":"string","track_number":0,"type":"track","uri":"string","is_local":false}

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    this.addedAt,
    this.addedBy,
    this.isLocal,
    this.track,
  });

  Items.fromJson(dynamic json) {
    addedAt = json['added_at'];
    addedBy =
        json['added_by'] != null ? AddedBy.fromJson(json['added_by']) : null;
    isLocal = json['is_local'];
    track = json['track'] != null ? Track.fromJson(json['track']) : null;
  }

  String? addedAt;
  AddedBy? addedBy;
  bool? isLocal;
  Track? track;

  Items copyWith({
    String? addedAt,
    AddedBy? addedBy,
    bool? isLocal,
    Track? track,
  }) =>
      Items(
        addedAt: addedAt ?? this.addedAt,
        addedBy: addedBy ?? this.addedBy,
        isLocal: isLocal ?? this.isLocal,
        track: track ?? this.track,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['added_at'] = addedAt;
    if (addedBy != null) {
      map['added_by'] = addedBy?.toJson();
    }
    map['is_local'] = isLocal;
    if (track != null) {
      map['track'] = track?.toJson();
    }
    return map;
  }
}

/// album : {"album_type":"compilation","total_tracks":9,"available_markets":["CA","BR","IT"],"external_urls":{"spotify":"string"},"href":"string","id":"2up3OPMp9Tb4dAKM2erWXQ","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","release_date":"1981-12","release_date_precision":"year","restrictions":{"reason":"market"},"type":"album","uri":"spotify:album:2up3OPMp9Tb4dAKM2erWXQ","artists":[{"external_urls":{"spotify":"string"},"href":"string","id":"string","name":"string","type":"artist","uri":"string"}]}
/// artists : [{"external_urls":{"spotify":"string"},"followers":{"href":"string","total":0},"genres":["Prog rock","Grunge"],"href":"string","id":"string","images":[{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}],"name":"string","popularity":0,"type":"artist","uri":"string"}]
/// available_markets : ["string"]
/// disc_number : 0
/// duration_ms : 0
/// explicit : false
/// external_ids : {"isrc":"string","ean":"string","upc":"string"}
/// external_urls : {"spotify":"string"}
/// href : "string"
/// id : "string"
/// is_playable : false
/// linked_from : {}
/// restrictions : {"reason":"string"}
/// name : "string"
/// popularity : 0
/// preview_url : "string"
/// track_number : 0
/// type : "track"
/// uri : "string"
/// is_local : false

Track trackFromJson(String str) => Track.fromJson(json.decode(str));

String trackToJson(Track data) => json.encode(data.toJson());

class Track {
  Track({
    this.album,
    this.artists,
    this.availableMarkets,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalIds,
    this.externalUrls,
    this.href,
    this.id,
    this.isPlayable,
    this.linkedFrom,
    this.restrictions,
    this.name,
    this.popularity,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
    this.isLocal,
  });

  Track.fromJson(dynamic json) {
    album = json['album'] != null ? Album.fromJson(json['album']) : null;
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
    availableMarkets = json['available_markets'] != null
        ? json['available_markets'].cast<String>()
        : [];
    discNumber = json['disc_number'];
    durationMs = json['duration_ms'];
    explicit = json['explicit'];
    externalIds = json['external_ids'] != null
        ? ExternalIds.fromJson(json['external_ids'])
        : null;
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    isPlayable = json['is_playable'];
    linkedFrom = json['linked_from'];
    restrictions = json['restrictions'] != null
        ? Restrictions.fromJson(json['restrictions'])
        : null;
    name = json['name'];
    popularity = json['popularity'];
    previewUrl = json['preview_url'];
    trackNumber = json['track_number'];
    type = json['type'];
    uri = json['uri'];
    isLocal = json['is_local'];
  }

  Album? album;
  List<Artists>? artists;
  List<String>? availableMarkets;
  num? discNumber;
  num? durationMs;
  bool? explicit;
  ExternalIds? externalIds;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  bool? isPlayable;
  dynamic linkedFrom;
  Restrictions? restrictions;
  String? name;
  num? popularity;
  String? previewUrl;
  num? trackNumber;
  String? type;
  String? uri;
  bool? isLocal;

  Track copyWith({
    Album? album,
    List<Artists>? artists,
    List<String>? availableMarkets,
    num? discNumber,
    num? durationMs,
    bool? explicit,
    ExternalIds? externalIds,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    bool? isPlayable,
    dynamic linkedFrom,
    Restrictions? restrictions,
    String? name,
    num? popularity,
    String? previewUrl,
    num? trackNumber,
    String? type,
    String? uri,
    bool? isLocal,
  }) =>
      Track(
        album: album ?? this.album,
        artists: artists ?? this.artists,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        discNumber: discNumber ?? this.discNumber,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalIds: externalIds ?? this.externalIds,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        isPlayable: isPlayable ?? this.isPlayable,
        linkedFrom: linkedFrom ?? this.linkedFrom,
        restrictions: restrictions ?? this.restrictions,
        name: name ?? this.name,
        popularity: popularity ?? this.popularity,
        previewUrl: previewUrl ?? this.previewUrl,
        trackNumber: trackNumber ?? this.trackNumber,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        isLocal: isLocal ?? this.isLocal,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (album != null) {
      map['album'] = album?.toJson();
    }
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    map['available_markets'] = availableMarkets;
    map['disc_number'] = discNumber;
    map['duration_ms'] = durationMs;
    map['explicit'] = explicit;
    if (externalIds != null) {
      map['external_ids'] = externalIds?.toJson();
    }
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    map['is_playable'] = isPlayable;
    map['linked_from'] = linkedFrom;
    if (restrictions != null) {
      map['restrictions'] = restrictions?.toJson();
    }
    map['name'] = name;
    map['popularity'] = popularity;
    map['preview_url'] = previewUrl;
    map['track_number'] = trackNumber;
    map['type'] = type;
    map['uri'] = uri;
    map['is_local'] = isLocal;
    return map;
  }
}

/// reason : "string"

Restrictions restrictionsFromJson(String str) =>
    Restrictions.fromJson(json.decode(str));

String restrictionsToJson(Restrictions data) => json.encode(data.toJson());

class Restrictions {
  Restrictions({
    this.reason,
  });

  Restrictions.fromJson(dynamic json) {
    reason = json['reason'];
  }

  String? reason;

  Restrictions copyWith({
    String? reason,
  }) =>
      Restrictions(
        reason: reason ?? this.reason,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['reason'] = reason;
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

/// isrc : "string"
/// ean : "string"
/// upc : "string"

ExternalIds externalIdsFromJson(String str) =>
    ExternalIds.fromJson(json.decode(str));

String externalIdsToJson(ExternalIds data) => json.encode(data.toJson());

class ExternalIds {
  ExternalIds({
    this.isrc,
    this.ean,
    this.upc,
  });

  ExternalIds.fromJson(dynamic json) {
    isrc = json['isrc'];
    ean = json['ean'];
    upc = json['upc'];
  }

  String? isrc;
  String? ean;
  String? upc;

  ExternalIds copyWith({
    String? isrc,
    String? ean,
    String? upc,
  }) =>
      ExternalIds(
        isrc: isrc ?? this.isrc,
        ean: ean ?? this.ean,
        upc: upc ?? this.upc,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['isrc'] = isrc;
    map['ean'] = ean;
    map['upc'] = upc;
    return map;
  }
}

/// external_urls : {"spotify":"string"}
/// followers : {"href":"string","total":0}
/// genres : ["Prog rock","Grunge"]
/// href : "string"
/// id : "string"
/// images : [{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}]
/// name : "string"
/// popularity : 0
/// type : "artist"
/// uri : "string"

Artists artistsFromJson(String str) => Artists.fromJson(json.decode(str));

String artistsToJson(Artists data) => json.encode(data.toJson());

class Artists {
  Artists({
    this.externalUrls,
    this.followers,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.name,
    this.popularity,
    this.type,
    this.uri,
  });

  Artists.fromJson(dynamic json) {
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    followers = json['followers'] != null
        ? Followers.fromJson(json['followers'])
        : null;
    genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    href = json['href'];
    id = json['id'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    name = json['name'];
    popularity = json['popularity'];
    type = json['type'];
    uri = json['uri'];
  }

  ExternalUrls? externalUrls;
  Followers? followers;
  List<String>? genres;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  num? popularity;
  String? type;
  String? uri;

  Artists copyWith({
    ExternalUrls? externalUrls,
    Followers? followers,
    List<String>? genres,
    String? href,
    String? id,
    List<Images>? images,
    String? name,
    num? popularity,
    String? type,
    String? uri,
  }) =>
      Artists(
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        genres: genres ?? this.genres,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        popularity: popularity ?? this.popularity,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    if (followers != null) {
      map['followers'] = followers?.toJson();
    }
    map['genres'] = genres;
    map['href'] = href;
    map['id'] = id;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['name'] = name;
    map['popularity'] = popularity;
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

/// album_type : "compilation"
/// total_tracks : 9
/// available_markets : ["CA","BR","IT"]
/// external_urls : {"spotify":"string"}
/// href : "string"
/// id : "2up3OPMp9Tb4dAKM2erWXQ"
/// images : [{"url":"https://i.scdn.co/image/ab67616d00001e02ff9ca10b55ce82ae553c8228","height":300,"width":300}]
/// name : "string"
/// release_date : "1981-12"
/// release_date_precision : "year"
/// restrictions : {"reason":"market"}
/// type : "album"
/// uri : "spotify:album:2up3OPMp9Tb4dAKM2erWXQ"
/// artists : [{"external_urls":{"spotify":"string"},"href":"string","id":"string","name":"string","type":"artist","uri":"string"}]

Album albumFromJson(String str) => Album.fromJson(json.decode(str));

String albumToJson(Album data) => json.encode(data.toJson());

class Album {
  Album({
    this.albumType,
    this.totalTracks,
    this.availableMarkets,
    this.externalUrls,
    this.href,
    this.id,
    this.images,
    this.name,
    this.releaseDate,
    this.releaseDatePrecision,
    this.restrictions,
    this.type,
    this.uri,
    this.artists,
  });

  Album.fromJson(dynamic json) {
    albumType = json['album_type'];
    totalTracks = json['total_tracks'];
    availableMarkets = json['available_markets'] != null
        ? json['available_markets'].cast<String>()
        : [];
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
    releaseDate = json['release_date'];
    releaseDatePrecision = json['release_date_precision'];
    restrictions = json['restrictions'] != null
        ? Restrictions.fromJson(json['restrictions'])
        : null;
    type = json['type'];
    uri = json['uri'];
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
  }

  String? albumType;
  num? totalTracks;
  List<String>? availableMarkets;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  List<Images>? images;
  String? name;
  String? releaseDate;
  String? releaseDatePrecision;
  Restrictions? restrictions;
  String? type;
  String? uri;
  List<Artists>? artists;

  Album copyWith({
    String? albumType,
    num? totalTracks,
    List<String>? availableMarkets,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Images>? images,
    String? name,
    String? releaseDate,
    String? releaseDatePrecision,
    Restrictions? restrictions,
    String? type,
    String? uri,
    List<Artists>? artists,
  }) =>
      Album(
        albumType: albumType ?? this.albumType,
        totalTracks: totalTracks ?? this.totalTracks,
        availableMarkets: availableMarkets ?? this.availableMarkets,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        name: name ?? this.name,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        restrictions: restrictions ?? this.restrictions,
        type: type ?? this.type,
        uri: uri ?? this.uri,
        artists: artists ?? this.artists,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['album_type'] = albumType;
    map['total_tracks'] = totalTracks;
    map['available_markets'] = availableMarkets;
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['name'] = name;
    map['release_date'] = releaseDate;
    map['release_date_precision'] = releaseDatePrecision;
    if (restrictions != null) {
      map['restrictions'] = restrictions?.toJson();
    }
    map['type'] = type;
    map['uri'] = uri;
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// external_urls : {"spotify":"string"}
/// href : "string"
/// id : "string"
/// name : "string"
/// type : "artist"
/// uri : "string"
/// external_urls : {"spotify":"string"}
/// followers : {"href":"string","total":0}
/// href : "string"
/// id : "string"
/// type : "user"
/// uri : "string"

AddedBy addedByFromJson(String str) => AddedBy.fromJson(json.decode(str));

String addedByToJson(AddedBy data) => json.encode(data.toJson());

class AddedBy {
  AddedBy({
    this.externalUrls,
    this.followers,
    this.href,
    this.id,
    this.type,
    this.uri,
  });

  AddedBy.fromJson(dynamic json) {
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
  }

  ExternalUrls? externalUrls;
  Followers? followers;
  String? href;
  String? id;
  String? type;
  String? uri;

  AddedBy copyWith({
    ExternalUrls? externalUrls,
    Followers? followers,
    String? href,
    String? id,
    String? type,
    String? uri,
  }) =>
      AddedBy(
        externalUrls: externalUrls ?? this.externalUrls,
        followers: followers ?? this.followers,
        href: href ?? this.href,
        id: id ?? this.id,
        type: type ?? this.type,
        uri: uri ?? this.uri,
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