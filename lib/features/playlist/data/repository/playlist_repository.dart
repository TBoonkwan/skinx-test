import 'package:skinx_test/features/playlist/data/model/create/create_new_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/detail/playlist_detail_request.dart';
import 'package:skinx_test/features/playlist/data/model/detail/playlist_detail_response.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';
import 'package:skinx_test/features/playlist/domain/repository/playlist_repository.dart';

class PlaylistRepository extends IPlaylistRepository {
  PlaylistDataSource dataSource;

  PlaylistRepository({
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

  @override
  Future createNewPlaylist({required CreateNewPlaylistRequest request}) async {
    return await dataSource.createNewPlaylist(
      request: request,
    );
  }

  @override
  Future<PlaylistDetailResponse> getPlaylistDetail({
    required PlaylistDetailRequest request,
  }) async {
    return await dataSource.getPlaylistDetail(
      request: request,
    );
  }

  @override
  Future<PlaylistDetailResponse> getMyPlaylistTrack({required PlaylistDetailRequest request}) async{
    return await dataSource.getMyPlaylistTracks(
      request: request,
    );
  }
}
