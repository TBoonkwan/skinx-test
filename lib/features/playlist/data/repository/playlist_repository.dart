import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';

class TodoListRepository extends IPlaylistRepository {
  PlaylistDataSource dataSource;

  TodoListRepository({
    required this.dataSource,
  });

  @override
  Future<MyPlaylistResponse> getPlaylist({
    required MyPlaylistRequest request,
  }) async {
    return await dataSource.getPlaylist(
      request: request,
    );
  }
}
