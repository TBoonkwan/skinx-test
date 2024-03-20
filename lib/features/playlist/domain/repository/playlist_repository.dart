import 'package:skinx_test/features/playlist/data/model/create/create_new_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';

abstract class IPlaylistRepository {
  Future<MyPlaylistResponse> getPlaylist({
    required MyPlaylistRequest request,
  });

  Future createNewPlaylist({
    required CreateNewPlaylistRequest request,
  });
}
