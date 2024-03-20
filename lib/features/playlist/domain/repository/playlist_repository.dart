import 'package:skinx_test/features/playlist/data/model/add/add_track_request.dart';
import 'package:skinx_test/features/playlist/data/model/create/create_new_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/detail/playlist_detail_request.dart';
import 'package:skinx_test/features/playlist/data/model/detail/playlist_detail_response.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';

abstract class IPlaylistRepository {
  Future<MyPlaylistResponse> getPlaylist({
    required MyPlaylistRequest request,
  });

  Future createNewPlaylist({
    required CreateNewPlaylistRequest request,
  });

  Future<PlaylistDetailResponse> getPlaylistDetail({
    required PlaylistDetailRequest request,
  });

  Future addTracksToPlaylist({
    required AddTrackRequest request,
  });
}
