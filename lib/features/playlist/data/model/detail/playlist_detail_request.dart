class PlaylistDetailRequest {
  final String playlistId;
  final num offset;
  final num limit;

  PlaylistDetailRequest({
    required this.playlistId,
    required this.offset,
    required this.limit,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offset'] = offset;
    map['limit'] = limit;
    map['market'] = "TH";
    return map;
  }
}
