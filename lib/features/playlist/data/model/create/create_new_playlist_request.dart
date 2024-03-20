import 'dart:convert';

/// name : "New Playlist"
/// description : "New playlist description"
/// public : false

CreateNewPlaylistRequest createNewPlaylistRequestFromJson(String str) =>
    CreateNewPlaylistRequest.fromJson(json.decode(str));

String createNewPlaylistRequestToJson(CreateNewPlaylistRequest data) =>
    json.encode(data.toJson());

class CreateNewPlaylistRequest {
  CreateNewPlaylistRequest({
    this.userId,
    this.name,
    this.description,
    this.public,
  });

  CreateNewPlaylistRequest.fromJson(dynamic json) {
    userId = json['userId'];
    name = json['name'];
    description = json['description'];
    public = json['public'];
  }

  String? name;
  String? userId;
  String? description;
  bool? public;

  CreateNewPlaylistRequest copyWith({
    String? userId,
    String? name,
    String? description,
    bool? public,
  }) =>
      CreateNewPlaylistRequest(
        userId: userId ?? this.userId,
        name: name ?? this.name,
        description: description ?? this.description,
        public: public ?? this.public,
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['description'] = description;
    map['public'] = true;
    return map;
  }
}
