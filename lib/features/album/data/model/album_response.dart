import 'dart:convert';

/// album_type : "album"
/// artists : [{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}]
/// copyrights : [{"text":"2000 GMM Music Company Limited","type":"C"},{"text":"2000 GMM Music Company Limited","type":"P"}]
/// external_ids : {"upc":"693"}
/// external_urls : {"spotify":"https://open.spotify.com/album/0arxBfmEjM9dUu8fm9WC9n"}
/// genres : []
/// href : "https://api.spotify.com/v1/albums/0arxBfmEjM9dUu8fm9WC9n"
/// id : "0arxBfmEjM9dUu8fm9WC9n"
/// images : [{"height":640,"url":"https://i.scdn.co/image/ab67616d0000b2736286cdb7819e1cb9c87ced70","width":640},{"height":300,"url":"https://i.scdn.co/image/ab67616d00001e026286cdb7819e1cb9c87ced70","width":300},{"height":64,"url":"https://i.scdn.co/image/ab67616d000048516286cdb7819e1cb9c87ced70","width":64}]
/// is_playable : true
/// label : "GMM Music Company Limited"
/// name : "Summer"
/// popularity : 53
/// release_date : "2000-05-25"
/// release_date_precision : "day"
/// total_tracks : 12
/// tracks : {"href":"https://api.spotify.com/v1/albums/0arxBfmEjM9dUu8fm9WC9n/tracks?offset=0&limit=50&market=TH","items":[{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":238000,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/0TZLgWfo5Q70PlDDiOlRZQ"},"href":"https://api.spotify.com/v1/tracks/0TZLgWfo5Q70PlDDiOlRZQ","id":"0TZLgWfo5Q70PlDDiOlRZQ","is_local":false,"is_playable":true,"name":"น้องเปิ้ล","preview_url":"https://p.scdn.co/mp3-preview/86ef43bd77c917ff8fed3c1b191fdd2e4c706958?cid=0ae4583f228b4571ba9e283b28bee353","track_number":1,"type":"track","uri":"spotify:track:0TZLgWfo5Q70PlDDiOlRZQ"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":197506,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/1oS3DiVag8BvZw9U9WV4Ge"},"href":"https://api.spotify.com/v1/tracks/1oS3DiVag8BvZw9U9WV4Ge","id":"1oS3DiVag8BvZw9U9WV4Ge","is_local":false,"is_playable":true,"name":"Love","preview_url":"https://p.scdn.co/mp3-preview/efcbfd726e0ab69abef848ec909fe2d83163c354?cid=0ae4583f228b4571ba9e283b28bee353","track_number":2,"type":"track","uri":"spotify:track:1oS3DiVag8BvZw9U9WV4Ge"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":196000,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/3Akpzt3DBkh2nrsVRMzEkG"},"href":"https://api.spotify.com/v1/tracks/3Akpzt3DBkh2nrsVRMzEkG","id":"3Akpzt3DBkh2nrsVRMzEkG","is_local":false,"is_playable":true,"name":"ภารตะฟิล์ม","preview_url":"https://p.scdn.co/mp3-preview/2fad1cea7d8af131fcbe7daa2a2efd4ca1727e28?cid=0ae4583f228b4571ba9e283b28bee353","track_number":3,"type":"track","uri":"spotify:track:3Akpzt3DBkh2nrsVRMzEkG"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":198160,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/2CcUALML2301vuTx0ONFNF"},"href":"https://api.spotify.com/v1/tracks/2CcUALML2301vuTx0ONFNF","id":"2CcUALML2301vuTx0ONFNF","is_local":false,"is_playable":true,"name":"มีแต่เธอ","preview_url":"https://p.scdn.co/mp3-preview/b4686ee8d5163aee7ecde27a35c17e513faa5244?cid=0ae4583f228b4571ba9e283b28bee353","track_number":4,"type":"track","uri":"spotify:track:2CcUALML2301vuTx0ONFNF"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":235173,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/50cwvYngX2bfeNHGlCOCZl"},"href":"https://api.spotify.com/v1/tracks/50cwvYngX2bfeNHGlCOCZl","id":"50cwvYngX2bfeNHGlCOCZl","is_local":false,"is_playable":true,"name":"ฤดูร้อน","preview_url":"https://p.scdn.co/mp3-preview/79ca11a5cd0c9084c79c3d441d8d9e58166f12db?cid=0ae4583f228b4571ba9e283b28bee353","track_number":5,"type":"track","uri":"spotify:track:50cwvYngX2bfeNHGlCOCZl"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":263280,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/5ZtjitHgoKhcHvpoFvdGXu"},"href":"https://api.spotify.com/v1/tracks/5ZtjitHgoKhcHvpoFvdGXu","id":"5ZtjitHgoKhcHvpoFvdGXu","is_local":false,"is_playable":true,"name":"ร.ด. แดนซ์","preview_url":"https://p.scdn.co/mp3-preview/034b736bbc07564aa003c9304afadd416c331114?cid=0ae4583f228b4571ba9e283b28bee353","track_number":6,"type":"track","uri":"spotify:track:5ZtjitHgoKhcHvpoFvdGXu"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":198800,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/2FAtOfRjKFifCahgUcleiE"},"href":"https://api.spotify.com/v1/tracks/2FAtOfRjKFifCahgUcleiE","id":"2FAtOfRjKFifCahgUcleiE","is_local":false,"is_playable":true,"name":"โดดน้ำตาย","preview_url":"https://p.scdn.co/mp3-preview/a6dbe1011842456b5a9ea52e290aba95438902e0?cid=0ae4583f228b4571ba9e283b28bee353","track_number":7,"type":"track","uri":"spotify:track:2FAtOfRjKFifCahgUcleiE"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":241093,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/0asS70iTgqcDl0WweRoHww"},"href":"https://api.spotify.com/v1/tracks/0asS70iTgqcDl0WweRoHww","id":"0asS70iTgqcDl0WweRoHww","is_local":false,"is_playable":true,"name":"ท่ามกลาง","preview_url":"https://p.scdn.co/mp3-preview/911e5f03540a4fcceee0cd90f719c65673c2fa51?cid=0ae4583f228b4571ba9e283b28bee353","track_number":8,"type":"track","uri":"spotify:track:0asS70iTgqcDl0WweRoHww"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":208426,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/7s1OK1Uybir7rthPuWXdRx"},"href":"https://api.spotify.com/v1/tracks/7s1OK1Uybir7rthPuWXdRx","id":"7s1OK1Uybir7rthPuWXdRx","is_local":false,"is_playable":true,"name":"3 มิติ","preview_url":"https://p.scdn.co/mp3-preview/a56b7b9f960da569dcb6669c9c207d85277055d2?cid=0ae4583f228b4571ba9e283b28bee353","track_number":9,"type":"track","uri":"spotify:track:7s1OK1Uybir7rthPuWXdRx"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":205160,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/6osfO17fnVfZdGKv4OARdZ"},"href":"https://api.spotify.com/v1/tracks/6osfO17fnVfZdGKv4OARdZ","id":"6osfO17fnVfZdGKv4OARdZ","is_local":false,"is_playable":true,"name":"ไถล","preview_url":"https://p.scdn.co/mp3-preview/9203bffdb24a860304db75d797b98e7a267fc443?cid=0ae4583f228b4571ba9e283b28bee353","track_number":10,"type":"track","uri":"spotify:track:6osfO17fnVfZdGKv4OARdZ"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":206413,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/7rTguDSJJIlNzvujlGsv9y"},"href":"https://api.spotify.com/v1/tracks/7rTguDSJJIlNzvujlGsv9y","id":"7rTguDSJJIlNzvujlGsv9y","is_local":false,"is_playable":true,"name":"อยู่ในใจ","preview_url":"https://p.scdn.co/mp3-preview/3321154ccab57d6fc6d09a4d3d1cd53e8de423bb?cid=0ae4583f228b4571ba9e283b28bee353","track_number":11,"type":"track","uri":"spotify:track:7rTguDSJJIlNzvujlGsv9y"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":378706,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/0LTajsUU6ukgD03HvBiX91"},"href":"https://api.spotify.com/v1/tracks/0LTajsUU6ukgD03HvBiX91","id":"0LTajsUU6ukgD03HvBiX91","is_local":false,"is_playable":true,"name":"ทัชมาฮาล","preview_url":"https://p.scdn.co/mp3-preview/3b9b2edcd35f6d41ca25e21c3fce7fa3e89efb4b?cid=0ae4583f228b4571ba9e283b28bee353","track_number":12,"type":"track","uri":"spotify:track:0LTajsUU6ukgD03HvBiX91"}],"limit":50,"next":null,"offset":0,"previous":null,"total":12}
/// type : "album"
/// uri : "spotify:album:0arxBfmEjM9dUu8fm9WC9n"

AlbumResponse albumResponseFromJson(String str) =>
    AlbumResponse.fromJson(json.decode(str));

String albumResponseToJson(AlbumResponse data) => json.encode(data.toJson());

class AlbumResponse {
  AlbumResponse({
    this.albumType,
    this.artists,
    this.copyrights,
    this.externalIds,
    this.externalUrls,
    this.genres,
    this.href,
    this.id,
    this.images,
    this.isPlayable,
    this.label,
    this.name,
    this.popularity,
    this.releaseDate,
    this.releaseDatePrecision,
    this.totalTracks,
    this.tracks,
    this.type,
    this.uri,
  });

  AlbumResponse.fromJson(dynamic json) {
    albumType = json['album_type'];
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
    if (json['copyrights'] != null) {
      copyrights = [];
      json['copyrights'].forEach((v) {
        copyrights?.add(Copyrights.fromJson(v));
      });
    }
    externalIds = json['external_ids'] != null
        ? ExternalIds.fromJson(json['external_ids'])
        : null;
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    if (json['genres'] != null) {
      genres = [];
      json['genres'].forEach((v) {
        genres?.add(v as String);
      });
    }
    href = json['href'];
    id = json['id'];
    if (json['images'] != null) {
      images = [];
      json['images'].forEach((v) {
        images?.add(Images.fromJson(v));
      });
    }
    isPlayable = json['is_playable'];
    label = json['label'];
    name = json['name'];
    popularity = json['popularity'];
    releaseDate = json['release_date'];
    releaseDatePrecision = json['release_date_precision'];
    totalTracks = json['total_tracks'];
    tracks = json['tracks'] != null ? Tracks.fromJson(json['tracks']) : null;
    type = json['type'];
    uri = json['uri'];
  }

  String? albumType;
  List<Artists>? artists;
  List<Copyrights>? copyrights;
  ExternalIds? externalIds;
  ExternalUrls? externalUrls;
  List<String>? genres;
  String? href;
  String? id;
  List<Images>? images;
  bool? isPlayable;
  String? label;
  String? name;
  num? popularity;
  String? releaseDate;
  String? releaseDatePrecision;
  num? totalTracks;
  Tracks? tracks;
  String? type;
  String? uri;

  AlbumResponse copyWith({
    String? albumType,
    List<Artists>? artists,
    List<Copyrights>? copyrights,
    ExternalIds? externalIds,
    ExternalUrls? externalUrls,
    List<String>? genres,
    String? href,
    String? id,
    List<Images>? images,
    bool? isPlayable,
    String? label,
    String? name,
    num? popularity,
    String? releaseDate,
    String? releaseDatePrecision,
    num? totalTracks,
    Tracks? tracks,
    String? type,
    String? uri,
  }) =>
      AlbumResponse(
        albumType: albumType ?? this.albumType,
        artists: artists ?? this.artists,
        copyrights: copyrights ?? this.copyrights,
        externalIds: externalIds ?? this.externalIds,
        externalUrls: externalUrls ?? this.externalUrls,
        genres: genres ?? this.genres,
        href: href ?? this.href,
        id: id ?? this.id,
        images: images ?? this.images,
        isPlayable: isPlayable ?? this.isPlayable,
        label: label ?? this.label,
        name: name ?? this.name,
        popularity: popularity ?? this.popularity,
        releaseDate: releaseDate ?? this.releaseDate,
        releaseDatePrecision: releaseDatePrecision ?? this.releaseDatePrecision,
        totalTracks: totalTracks ?? this.totalTracks,
        tracks: tracks ?? this.tracks,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['album_type'] = albumType;
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    if (copyrights != null) {
      map['copyrights'] = copyrights?.map((v) => v.toJson()).toList();
    }
    if (externalIds != null) {
      map['external_ids'] = externalIds?.toJson();
    }
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    if (images != null) {
      map['images'] = images?.map((v) => v.toJson()).toList();
    }
    map['is_playable'] = isPlayable;
    map['label'] = label;
    map['name'] = name;
    map['popularity'] = popularity;
    map['release_date'] = releaseDate;
    map['release_date_precision'] = releaseDatePrecision;
    map['total_tracks'] = totalTracks;
    if (tracks != null) {
      map['tracks'] = tracks?.toJson();
    }
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}

/// href : "https://api.spotify.com/v1/albums/0arxBfmEjM9dUu8fm9WC9n/tracks?offset=0&limit=50&market=TH"
/// items : [{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":238000,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/0TZLgWfo5Q70PlDDiOlRZQ"},"href":"https://api.spotify.com/v1/tracks/0TZLgWfo5Q70PlDDiOlRZQ","id":"0TZLgWfo5Q70PlDDiOlRZQ","is_local":false,"is_playable":true,"name":"น้องเปิ้ล","preview_url":"https://p.scdn.co/mp3-preview/86ef43bd77c917ff8fed3c1b191fdd2e4c706958?cid=0ae4583f228b4571ba9e283b28bee353","track_number":1,"type":"track","uri":"spotify:track:0TZLgWfo5Q70PlDDiOlRZQ"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":197506,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/1oS3DiVag8BvZw9U9WV4Ge"},"href":"https://api.spotify.com/v1/tracks/1oS3DiVag8BvZw9U9WV4Ge","id":"1oS3DiVag8BvZw9U9WV4Ge","is_local":false,"is_playable":true,"name":"Love","preview_url":"https://p.scdn.co/mp3-preview/efcbfd726e0ab69abef848ec909fe2d83163c354?cid=0ae4583f228b4571ba9e283b28bee353","track_number":2,"type":"track","uri":"spotify:track:1oS3DiVag8BvZw9U9WV4Ge"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":196000,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/3Akpzt3DBkh2nrsVRMzEkG"},"href":"https://api.spotify.com/v1/tracks/3Akpzt3DBkh2nrsVRMzEkG","id":"3Akpzt3DBkh2nrsVRMzEkG","is_local":false,"is_playable":true,"name":"ภารตะฟิล์ม","preview_url":"https://p.scdn.co/mp3-preview/2fad1cea7d8af131fcbe7daa2a2efd4ca1727e28?cid=0ae4583f228b4571ba9e283b28bee353","track_number":3,"type":"track","uri":"spotify:track:3Akpzt3DBkh2nrsVRMzEkG"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":198160,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/2CcUALML2301vuTx0ONFNF"},"href":"https://api.spotify.com/v1/tracks/2CcUALML2301vuTx0ONFNF","id":"2CcUALML2301vuTx0ONFNF","is_local":false,"is_playable":true,"name":"มีแต่เธอ","preview_url":"https://p.scdn.co/mp3-preview/b4686ee8d5163aee7ecde27a35c17e513faa5244?cid=0ae4583f228b4571ba9e283b28bee353","track_number":4,"type":"track","uri":"spotify:track:2CcUALML2301vuTx0ONFNF"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":235173,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/50cwvYngX2bfeNHGlCOCZl"},"href":"https://api.spotify.com/v1/tracks/50cwvYngX2bfeNHGlCOCZl","id":"50cwvYngX2bfeNHGlCOCZl","is_local":false,"is_playable":true,"name":"ฤดูร้อน","preview_url":"https://p.scdn.co/mp3-preview/79ca11a5cd0c9084c79c3d441d8d9e58166f12db?cid=0ae4583f228b4571ba9e283b28bee353","track_number":5,"type":"track","uri":"spotify:track:50cwvYngX2bfeNHGlCOCZl"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":263280,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/5ZtjitHgoKhcHvpoFvdGXu"},"href":"https://api.spotify.com/v1/tracks/5ZtjitHgoKhcHvpoFvdGXu","id":"5ZtjitHgoKhcHvpoFvdGXu","is_local":false,"is_playable":true,"name":"ร.ด. แดนซ์","preview_url":"https://p.scdn.co/mp3-preview/034b736bbc07564aa003c9304afadd416c331114?cid=0ae4583f228b4571ba9e283b28bee353","track_number":6,"type":"track","uri":"spotify:track:5ZtjitHgoKhcHvpoFvdGXu"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":198800,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/2FAtOfRjKFifCahgUcleiE"},"href":"https://api.spotify.com/v1/tracks/2FAtOfRjKFifCahgUcleiE","id":"2FAtOfRjKFifCahgUcleiE","is_local":false,"is_playable":true,"name":"โดดน้ำตาย","preview_url":"https://p.scdn.co/mp3-preview/a6dbe1011842456b5a9ea52e290aba95438902e0?cid=0ae4583f228b4571ba9e283b28bee353","track_number":7,"type":"track","uri":"spotify:track:2FAtOfRjKFifCahgUcleiE"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":241093,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/0asS70iTgqcDl0WweRoHww"},"href":"https://api.spotify.com/v1/tracks/0asS70iTgqcDl0WweRoHww","id":"0asS70iTgqcDl0WweRoHww","is_local":false,"is_playable":true,"name":"ท่ามกลาง","preview_url":"https://p.scdn.co/mp3-preview/911e5f03540a4fcceee0cd90f719c65673c2fa51?cid=0ae4583f228b4571ba9e283b28bee353","track_number":8,"type":"track","uri":"spotify:track:0asS70iTgqcDl0WweRoHww"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":208426,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/7s1OK1Uybir7rthPuWXdRx"},"href":"https://api.spotify.com/v1/tracks/7s1OK1Uybir7rthPuWXdRx","id":"7s1OK1Uybir7rthPuWXdRx","is_local":false,"is_playable":true,"name":"3 มิติ","preview_url":"https://p.scdn.co/mp3-preview/a56b7b9f960da569dcb6669c9c207d85277055d2?cid=0ae4583f228b4571ba9e283b28bee353","track_number":9,"type":"track","uri":"spotify:track:7s1OK1Uybir7rthPuWXdRx"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":205160,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/6osfO17fnVfZdGKv4OARdZ"},"href":"https://api.spotify.com/v1/tracks/6osfO17fnVfZdGKv4OARdZ","id":"6osfO17fnVfZdGKv4OARdZ","is_local":false,"is_playable":true,"name":"ไถล","preview_url":"https://p.scdn.co/mp3-preview/9203bffdb24a860304db75d797b98e7a267fc443?cid=0ae4583f228b4571ba9e283b28bee353","track_number":10,"type":"track","uri":"spotify:track:6osfO17fnVfZdGKv4OARdZ"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":206413,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/7rTguDSJJIlNzvujlGsv9y"},"href":"https://api.spotify.com/v1/tracks/7rTguDSJJIlNzvujlGsv9y","id":"7rTguDSJJIlNzvujlGsv9y","is_local":false,"is_playable":true,"name":"อยู่ในใจ","preview_url":"https://p.scdn.co/mp3-preview/3321154ccab57d6fc6d09a4d3d1cd53e8de423bb?cid=0ae4583f228b4571ba9e283b28bee353","track_number":11,"type":"track","uri":"spotify:track:7rTguDSJJIlNzvujlGsv9y"},{"artists":[{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}],"disc_number":1,"duration_ms":378706,"explicit":false,"external_urls":{"spotify":"https://open.spotify.com/track/0LTajsUU6ukgD03HvBiX91"},"href":"https://api.spotify.com/v1/tracks/0LTajsUU6ukgD03HvBiX91","id":"0LTajsUU6ukgD03HvBiX91","is_local":false,"is_playable":true,"name":"ทัชมาฮาล","preview_url":"https://p.scdn.co/mp3-preview/3b9b2edcd35f6d41ca25e21c3fce7fa3e89efb4b?cid=0ae4583f228b4571ba9e283b28bee353","track_number":12,"type":"track","uri":"spotify:track:0LTajsUU6ukgD03HvBiX91"}]
/// limit : 50
/// next : null
/// offset : 0
/// previous : null
/// total : 12

Tracks tracksFromJson(String str) => Tracks.fromJson(json.decode(str));

String tracksToJson(Tracks data) => json.encode(data.toJson());

class Tracks {
  Tracks({
    this.href,
    this.items,
    this.limit,
    this.next,
    this.offset,
    this.previous,
    this.total,
  });

  Tracks.fromJson(dynamic json) {
    href = json['href'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    limit = json['limit'];
    next = json['next'];
    offset = json['offset'];
    previous = json['previous'];
    total = json['total'];
  }

  String? href;
  List<Items>? items;
  num? limit;
  dynamic next;
  num? offset;
  dynamic previous;
  num? total;

  Tracks copyWith({
    String? href,
    List<Items>? items,
    num? limit,
    dynamic next,
    num? offset,
    dynamic previous,
    num? total,
  }) =>
      Tracks(
        href: href ?? this.href,
        items: items ?? this.items,
        limit: limit ?? this.limit,
        next: next ?? this.next,
        offset: offset ?? this.offset,
        previous: previous ?? this.previous,
        total: total ?? this.total,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['href'] = href;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['limit'] = limit;
    map['next'] = next;
    map['offset'] = offset;
    map['previous'] = previous;
    map['total'] = total;
    return map;
  }
}

/// artists : [{"external_urls":{"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"},"href":"https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M","id":"32bq0Oy4ygWPR5ItUM5J5M","name":"Paradox","type":"artist","uri":"spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"}]
/// disc_number : 1
/// duration_ms : 238000
/// explicit : false
/// external_urls : {"spotify":"https://open.spotify.com/track/0TZLgWfo5Q70PlDDiOlRZQ"}
/// href : "https://api.spotify.com/v1/tracks/0TZLgWfo5Q70PlDDiOlRZQ"
/// id : "0TZLgWfo5Q70PlDDiOlRZQ"
/// is_local : false
/// is_playable : true
/// name : "น้องเปิ้ล"
/// preview_url : "https://p.scdn.co/mp3-preview/86ef43bd77c917ff8fed3c1b191fdd2e4c706958?cid=0ae4583f228b4571ba9e283b28bee353"
/// track_number : 1
/// type : "track"
/// uri : "spotify:track:0TZLgWfo5Q70PlDDiOlRZQ"

Items itemsFromJson(String str) => Items.fromJson(json.decode(str));

String itemsToJson(Items data) => json.encode(data.toJson());

class Items {
  Items({
    this.artists,
    this.discNumber,
    this.durationMs,
    this.explicit,
    this.externalUrls,
    this.href,
    this.id,
    this.isLocal,
    this.isPlayable,
    this.name,
    this.previewUrl,
    this.trackNumber,
    this.type,
    this.uri,
  });

  Items.fromJson(dynamic json) {
    if (json['artists'] != null) {
      artists = [];
      json['artists'].forEach((v) {
        artists?.add(Artists.fromJson(v));
      });
    }
    discNumber = json['disc_number'];
    durationMs = json['duration_ms'];
    explicit = json['explicit'];
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    isLocal = json['is_local'];
    isPlayable = json['is_playable'];
    name = json['name'];
    previewUrl = json['preview_url'];
    trackNumber = json['track_number'];
    type = json['type'];
    uri = json['uri'];
  }

  List<Artists>? artists;
  num? discNumber;
  num? durationMs;
  bool? explicit;
  ExternalUrls? externalUrls;
  String? href;
  String? id;
  bool? isLocal;
  bool? isPlayable;
  String? name;
  String? previewUrl;
  num? trackNumber;
  String? type;
  String? uri;

  Items copyWith({
    List<Artists>? artists,
    num? discNumber,
    num? durationMs,
    bool? explicit,
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    bool? isLocal,
    bool? isPlayable,
    String? name,
    String? previewUrl,
    num? trackNumber,
    String? type,
    String? uri,
  }) =>
      Items(
        artists: artists ?? this.artists,
        discNumber: discNumber ?? this.discNumber,
        durationMs: durationMs ?? this.durationMs,
        explicit: explicit ?? this.explicit,
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        isLocal: isLocal ?? this.isLocal,
        isPlayable: isPlayable ?? this.isPlayable,
        name: name ?? this.name,
        previewUrl: previewUrl ?? this.previewUrl,
        trackNumber: trackNumber ?? this.trackNumber,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (artists != null) {
      map['artists'] = artists?.map((v) => v.toJson()).toList();
    }
    map['disc_number'] = discNumber;
    map['duration_ms'] = durationMs;
    map['explicit'] = explicit;
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    map['is_local'] = isLocal;
    map['is_playable'] = isPlayable;
    map['name'] = name;
    map['preview_url'] = previewUrl;
    map['track_number'] = trackNumber;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}

/// spotify : "https://open.spotify.com/track/0TZLgWfo5Q70PlDDiOlRZQ"

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

/// external_urls : {"spotify":"https://open.spotify.com/artist/32bq0Oy4ygWPR5ItUM5J5M"}
/// href : "https://api.spotify.com/v1/artists/32bq0Oy4ygWPR5ItUM5J5M"
/// id : "32bq0Oy4ygWPR5ItUM5J5M"
/// name : "Paradox"
/// type : "artist"
/// uri : "spotify:artist:32bq0Oy4ygWPR5ItUM5J5M"

Artists artistsFromJson(String str) => Artists.fromJson(json.decode(str));

String artistsToJson(Artists data) => json.encode(data.toJson());

class Artists {
  Artists({
    this.externalUrls,
    this.href,
    this.id,
    this.name,
    this.type,
    this.uri,
  });

  Artists.fromJson(dynamic json) {
    externalUrls = json['external_urls'] != null
        ? ExternalUrls.fromJson(json['external_urls'])
        : null;
    href = json['href'];
    id = json['id'];
    name = json['name'];
    type = json['type'];
    uri = json['uri'];
  }

  ExternalUrls? externalUrls;
  String? href;
  String? id;
  String? name;
  String? type;
  String? uri;

  Artists copyWith({
    ExternalUrls? externalUrls,
    String? href,
    String? id,
    String? name,
    String? type,
    String? uri,
  }) =>
      Artists(
        externalUrls: externalUrls ?? this.externalUrls,
        href: href ?? this.href,
        id: id ?? this.id,
        name: name ?? this.name,
        type: type ?? this.type,
        uri: uri ?? this.uri,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (externalUrls != null) {
      map['external_urls'] = externalUrls?.toJson();
    }
    map['href'] = href;
    map['id'] = id;
    map['name'] = name;
    map['type'] = type;
    map['uri'] = uri;
    return map;
  }
}

/// height : 640
/// url : "https://i.scdn.co/image/ab67616d0000b2736286cdb7819e1cb9c87ced70"
/// width : 640

Images imagesFromJson(String str) => Images.fromJson(json.decode(str));

String imagesToJson(Images data) => json.encode(data.toJson());

class Images {
  Images({
    this.height,
    this.url,
    this.width,
  });

  Images.fromJson(dynamic json) {
    height = json['height'];
    url = json['url'];
    width = json['width'];
  }

  num? height;
  String? url;
  num? width;

  Images copyWith({
    num? height,
    String? url,
    num? width,
  }) =>
      Images(
        height: height ?? this.height,
        url: url ?? this.url,
        width: width ?? this.width,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['url'] = url;
    map['width'] = width;
    return map;
  }
}

/// upc : "693"

ExternalIds externalIdsFromJson(String str) =>
    ExternalIds.fromJson(json.decode(str));

String externalIdsToJson(ExternalIds data) => json.encode(data.toJson());

class ExternalIds {
  ExternalIds({
    this.upc,
  });

  ExternalIds.fromJson(dynamic json) {
    upc = json['upc'];
  }

  String? upc;

  ExternalIds copyWith({
    String? upc,
  }) =>
      ExternalIds(
        upc: upc ?? this.upc,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['upc'] = upc;
    return map;
  }
}

/// text : "2000 GMM Music Company Limited"
/// type : "C"

Copyrights copyrightsFromJson(String str) =>
    Copyrights.fromJson(json.decode(str));

String copyrightsToJson(Copyrights data) => json.encode(data.toJson());

class Copyrights {
  Copyrights({
    this.text,
    this.type,
  });

  Copyrights.fromJson(dynamic json) {
    text = json['text'];
    type = json['type'];
  }

  String? text;
  String? type;

  Copyrights copyWith({
    String? text,
    String? type,
  }) =>
      Copyrights(
        text: text ?? this.text,
        type: type ?? this.type,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['text'] = text;
    map['type'] = type;
    return map;
  }
}
