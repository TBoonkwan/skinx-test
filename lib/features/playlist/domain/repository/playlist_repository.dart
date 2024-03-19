import 'package:skinx_test/features/playlist/data/model/playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/playlist_response.dart';

abstract class IPlaylistRepository {
  Future<PlaylistResponse> getPlaylist({
    required PlaylistRequest request,
  });
}
