import 'package:dio/dio.dart';
import 'package:skinx_test/features/playlist/data/model/create/create_new_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_request.dart';
import 'package:skinx_test/features/playlist/data/model/my_playlist_response.dart';
import 'package:skinx_test/features/playlist/data/source/playlist_data_source.dart';

class RemotePlaylistDataSource extends PlaylistDataSource {
  final Dio dio;

  RemotePlaylistDataSource({
    required this.dio,
  });

  @override
  Future<MyPlaylistResponse> getPlaylist({
    required MyPlaylistRequest request,
  }) async {
    var response = await dio.get(
      "users/${request.userId}/playlists",
      queryParameters: request.toJson(),
    );
    return MyPlaylistResponse.fromJson(response.data);
  }

  @override
  Future createNewPlaylist({required CreateNewPlaylistRequest request}) async {
    await dio.post("users/${request.userId}/playlists", data: request.toJson());
    return;
  }
}
