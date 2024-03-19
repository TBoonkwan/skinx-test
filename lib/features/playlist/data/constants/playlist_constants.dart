class PlaylistKeyConstants {
  static String PlaylistKey = "todo_list";
}

enum PlaylistStatus {
  todo("TODO"),
  doing("DOING"),
  done("DONE");

  final String value;

  const PlaylistStatus(this.value);
}

enum PlaylistSortBy {
  createdAt("createdAt");

  final String value;

  const PlaylistSortBy(this.value);
}

enum PlaylistOrderBy {
  asc("asc"),
  desc("desc");

  final String value;

  const PlaylistOrderBy(this.value);
}
