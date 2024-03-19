class MyPlaylistRequest {
  final String userId;
  final num offset;
  final num limit;

  MyPlaylistRequest({
    required this.userId,
    required this.offset,
    required this.limit,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['offset'] = offset;
    map['limit'] = limit;
    return map;
  }
}
