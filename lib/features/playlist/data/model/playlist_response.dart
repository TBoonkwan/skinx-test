import 'task.dart';

/// task : [{"title":"Title","subtitle":"Subtitle","status":0},{"title":"Title","subtitle":"Subtitle","status":1},{"title":"Title","subtitle":"Subtitle","status":2}]

class PlaylistResponse {
  List<Task>? task;
  num? pageNumber;
  num? totalPages;

  PlaylistResponse({
    this.task,
    this.pageNumber,
    this.totalPages,
  });

  PlaylistResponse.fromJson(dynamic json) {
    pageNumber = json["pageNumber"];
    totalPages = json["totalPages"];
    if (json['tasks'] != null) {
      task = [];
      json['tasks'].forEach((v) {
        task?.add(Task.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['pageNumber'] = pageNumber;
    map['totalPages'] = totalPages;
    if (task != null) {
      map['task'] = task?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}
