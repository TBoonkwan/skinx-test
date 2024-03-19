class AlbumRequest {
  final String albumId;

  AlbumRequest({
    required this.albumId,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = albumId;
    map['market'] = "TH";
    return map;
  }
}
