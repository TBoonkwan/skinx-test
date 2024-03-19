class MySearchRequest {
  final String query;
  final num offset;
  final num limit;

  MySearchRequest({
    required this.query,
    required this.offset,
    required this.limit,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['q'] = query;
    map['offset'] = offset;
    map['limit'] = limit;
    map['market'] = "TH";
    map['type'] = "album";
    return map;
  }
}
