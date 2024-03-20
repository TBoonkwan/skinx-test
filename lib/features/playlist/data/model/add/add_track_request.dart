class AddTrackRequest {
  final String playlistId;
  final List<String> uris;
  final num position;

  AddTrackRequest({
    required this.playlistId,
    required this.uris,
    required this.position,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['position'] = position;
    map['uris'] = uris;
    return map;
  }
}
