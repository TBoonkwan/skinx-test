import 'package:skinx_test/features/playlist/data/model/playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';

class TodoListRepository extends IPlaylistRepository {
  PlaylistDataSource dataSource;

  TodoListRepository({
    required this.dataSource,
  });

  @override
  Future<PlaylistResponse> getPlaylist({
    required PlaylistRequest request,
  }) async {
    return await dataSource.getPlaylist(
      request: request,
    );
  }
}
